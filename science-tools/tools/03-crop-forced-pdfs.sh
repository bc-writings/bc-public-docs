# Version: 2025-08-24.science-tools


# --------------- #
# -- CONSTANTS -- #
# --------------- #

HASH_FILE="x-pdf-x.sha1"


# ----------------------- #
# -- ONE FOLDER NEEDED -- #
# ----------------------- #

if [ -z "$1" ]
then
  echo "CRITICAL - Missing arg: absolute target folder needed."
  exit 1
fi

if [ ! $# -eq 1 ]
then
  echo "CRITICAL - Too much arguments!"
  exit 1
fi

TARGET=$1

if [ ! -d "$TARGET" ]
then
  echo "CRITICAL - Missing folder: ''$TARGET''."
  exit 1
fi


# ------------------------- #
# -- LET'S CROP TOGETHER -- #
# ------------------------- #

cd "$TARGET"

for f in $(find cookbook/src -name 'main*.tex' | sort -u)
do
  if grep -q '^[[:space:]]*%[[:space:]]*FORCE-CROP[[:space:]]*$' "$TARGET/$f"
  then
    fdir=$(dirname "$f")

    fstem=$(basename "$f")
    fstem="${fstem#./}"
    fstem="${fstem%.*}"

    pdfile="$fstem.pdf"

    echo "+ ./$fdir"

    cd "$TARGET/$fdir"

    newhash=$(shasum -a 1 "$pdfile" | cut -d ' ' -f1)

    oldhash=""

    if [[ -f "$HASH_FILE" ]]
    then
      oldhash=$(cat "$HASH_FILE")
    fi

    if [[ "$newhash" != "$oldhash" || ! -f "$fstem-crop.pdf" ]]
    then
      echo "  Croping needed for '$fstem.tex'."

      pdfcrop --margins '3' "$pdfile"

      echo "$newhash" > "$HASH_FILE"

    else
      echo "  Nothing to do for '$fstem.tex'."
    fi
  fi
done # for f in $(find . -name '*.tex')
