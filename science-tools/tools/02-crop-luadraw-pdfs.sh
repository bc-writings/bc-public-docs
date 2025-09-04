# Version: 2025-09-04.science-tools


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

for fdir in $(find cookbook/src -name '*.luadraw.tkz' -exec dirname {} \; | sort -u)
do
  echo "+ ./$fdir"

  cd "$TARGET/$fdir"

  for f in $(find . -name 'main*.tex')
  do
    fstem="${f#./}"
    fstem="${fstem%.*}"

    pdfile="$fstem.pdf"

    newhash=$(shasum -a 1 "$pdfile" | cut -d ' ' -f1)

    oldhash=""

    hash_file="x-$fstem-pdf-x.sha1"

    if [[ -f "$hash_file" ]]
    then
      oldhash=$(cat "$hash_file")
    fi

    if [[ "$newhash" != "$oldhash" || ! -f "$fstem-crop.pdf" ]]
    then
      pdfcrop --margins '3' "$pdfile"

      echo "$newhash" > "$hash_file"

    else
      echo "  Nothing to do."
    fi
  done # for f in $(find . -name '*.tex')
done   # for fdir in $(find cookbook/src -name '*.tkz' -exec dirname {} \; | sort -u)
