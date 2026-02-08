# Version: 2025-08-24.science-tools


# PÄRALLELISER !!!!


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
  local file="$1"

  echo "ERROR - Compilation failed for: $file" >&2

  xdg-open "$file" 2>/dev/null || open "$file" 2>/dev/null || echo "Cannot open $file"

  exit 1
}


cd "$TARGET"

for f in $(find cookbook/src -name 'main*.tex' -o -name 'xtra*.tex' | sort -u)
do
  if [[ "$f" == *-by-hand.tex ]]; then
    echo "-- NEW TEX FILE - HUMAN PROCESS --"
    echo "./$f"
    open "$TARGET/$f"

  else
    echo "-- NEW TEX FILE - AUTO --"
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
  fi
done # for f in $(find . -name '*.tex')
