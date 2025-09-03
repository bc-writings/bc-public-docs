#!/bin/bash

# --------------- #
# -- CONSTANTS -- #
# --------------- #

THIS_DIR="$(cd "$(dirname "$0")" && pwd)"

THIS_NAME=$(basename "$0")
THIS_STEM=${THIS_NAME%%.*}


# ----------- #
# -- TOOLS -- #
# ----------- #

###
# prototype::
#     #1 : an error code.
#     #2 : a message.
###
print_cli_info() {
    echo "$2"
    exit $1
}


###
# prototype::
#     #1 : a directory path.
#     #2 : a file name.
###
error_exit() {
    printf "\033[91m\033[1m"

    echo "  ERROR , see the file:"
    echo "    + $1/$2"

    exit 1
}


###
# prototype::
#     #1 : a terminal colour code.
#     #2 : a message.
###
print_about() {
    printf "\033[$1"
    echo "$2"
    printf "\033[0m"
}


# ------------------- #
# -- FOLDER NEEDED -- #
# ------------------- #

if [[ $# -ne 1 ]]
then
    print_cli_info 1 "Error: One folder needed."
fi


# ----------------- #
# -- LET'S WORK! -- #
# ----------------- #

# Let's work locally.
cd "$THIS_DIR"


find . -maxdepth 1 -type f  -name '*.sh' ! -name 'launch.sh' -print | sort | while read -r bashfile
# find . -maxdepth 1 -type f -name '*.sh' | while read -r bashfile
do
    print_about "32m" "Launching $bashfile"

    bash "$bashfile" "$1"

    echo ""
done
