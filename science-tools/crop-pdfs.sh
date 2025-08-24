# Version: 2025-08-24.science-tools


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

for fdir in $(find cookbook/src -name '*.tkz' -exec dirname {} \; | sort -u)
do
  echo "+ $fdir"

  cd "$TARGET/$fdir"

  pdfcrop --margins '3' main.pdf
done
