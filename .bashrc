#
# source ~/dot-files/.bashrc > ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return;

ROOT_DIR="$(dirname "${BASH_SOURCE[0]}")/";

DOT_FILES=(vars functions aliases prompt);

for file in ${DOT_FILES[*]}; do
    file="$ROOT_DIR.$file";
    [ -f "$file" ] && [ -r "$file" ] && source "$file";
done;

# So as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon;
