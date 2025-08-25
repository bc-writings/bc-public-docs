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

echo "-- CROPING LUADRAW PDFs --"
echo ""

cd "$TARGET"

for fdir in $(find cookbook/src -name '*.tkz' -exec dirname {} \; | sort -u)
do
  echo "+ $fdir"

  cd "$TARGET/$fdir"

  newhash=$(shasum -a 1 "main.pdf" | cut -d ' ' -f1)

  oldhash=""

  if [[ -f "$HASH_FILE" ]]; then
      oldhash=$(cat "$HASH_FILE")
  fi

  if [[ "$newhash" != "$oldhash" ]]
  then
      pdfcrop --margins '3' main.pdf

      echo "$newhash" > "$HASH_FILE"
  else
      echo "  Nothing to do."
  fi
done # for fdir in $(find cookbook/src -name '*.tkz' -exec dirname {} \; | sort -u)
