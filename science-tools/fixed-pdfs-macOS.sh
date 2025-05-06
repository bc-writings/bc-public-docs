# Version: 2025-05-06.science-tools


# --------------- #
# -- CONSTANTS -- #
# --------------- #

THISDIR=$(dirname "$0")
WORKINGDIR=$(pwd)


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
}


cd "$TARGET"

for f in $(find . -name '*.tex')
do
  if [ $(basename "$f") == "main.tex" ]
  then
    case "$f" in
      ./*/cookbook/src/**/*.tex)
        echo "-- NEW TEX FILE --"
        echo "$f"

        luafile="${f%.*}.lua"

        if [ -f "$TARGET/$luafile" ]
        then
          texcmd="lualatex"
        else
          texcmd="pdflatex"
        fi

        fdir=$(dirname "$f")

        cd "$TARGET/$fdir"

        SOURCE_DATE_EPOCH=0 FORCE_SOURCE_DATE=1 latexmk -quiet -pdf -pdflatex="$texcmd --interaction=nonstopmode --halt-on-error --shell-escape  %O %S" "$TARGET/$f" || nocompile "$TARGET/$f"

        # latexmk -c "$TARGET/$f"
    esac
  fi
done # for f in $(find . -name '*.tex')
