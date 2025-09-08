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


# --------------------- #
# -- LISTED PROJECTS -- #
# --------------------- #

function nocompile {
  open "$1"

  exit 1
}

cd "$TARGET"

for f in $(find cookbook/src -name 'main*.tex' | sort -u)
do
  echo "-- NEW TEX FILE --"
  echo "./$f"

  fdir=$(dirname "$f")

  cd "$TARGET/$fdir"

  if head -n 1 "$TARGET/$f" | grep '^% *!TEX TS-program *= *lualatex'
  then
    texcmd="lualatex"

  else
    texcmd="pdflatex"
  fi

  SOURCE_DATE_EPOCH=0 FORCE_SOURCE_DATE=1 latexmk -quiet -pdf -pdflatex="$texcmd --interaction=nonstopmode --halt-on-error --shell-escape  %O %S" "$TARGET/$f" || nocompile "$TARGET/$f"
done # for f in $(find . -name '*.tex')
