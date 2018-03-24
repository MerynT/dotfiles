#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Shell
COLOR_NC='\e[0m' # No Color
COLOR_WHITE='\e[1;37m'
COLOR_BLACK='\e[0;30m'
COLOR_BLUE='\e[0;34m'
COLOR_LIGHT_BLUE='\e[1;34m'
COLOR_GREEN='\e[0;32m'
COLOR_LIGHT_GREEN='\e[1;32m'
COLOR_CYAN='\e[0;36m'
COLOR_LIGHT_CYAN='\e[1;36m'
COLOR_RED='\e[0;31m'
COLOR_LIGHT_RED='\e[1;31m'
COLOR_PURPLE='\e[0;35m'
COLOR_LIGHT_PURPLE='\e[1;35m'
COLOR_BROWN='\e[0;33m'
COLOR_YELLOW='\e[1;33m'
COLOR_GRAY='\e[0;30m'
COLOR_LIGHT_GRAY='\e[0;37m'

git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'; } 
HOST="${COLOR_BLUE}\\h"
LOCATION="${COLOR_YELLOW}\\w"
BRANCH="${COLOR_GREEN}\$(git_branch)"
PS1="$COLOR_CYAN$USER $HOST $LOCATION $BRANCH${COLOR_NC}\n$ "
PS2="> "

# LS
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -Gh'

# Git
alias checkout='git checkout'
alias co='checkout' 
alias status='git status'
alias s='status' 
alias b='git branch -a'
alias branch='b | grep' 
alias fetch='git fetch'
alias pull='git pull'
alias push='git push'
alias reset='git reset --hard'
