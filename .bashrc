#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.shell_common_rc
source ~/.aliasrc

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi


# prompt
export PS1='\[\033[00;32m\]\u\[\033[00;33m\]@\[\033[00;32m\]\h\[\033[01;30m\]:\[\033[01;36m\]\w\[\033[01;37m\]$ \[\033[00m\]'
#export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
#PS1='[\u@\h \W]\$ '

# color echo
function echo_blue() { echo -e "\x1b[34m\x1b[1m"$@"\x1b[0m"; }
function echo_green() { echo -e "\x1b[32m\x1b[1m"$@"\x1b[0m"; }
function echo_red() { echo -e "\x1b[31m\x1b[1m"$@"\x1b[0m"; }

# calculator fuction : ? 4+4
function ?() { echo "$*" | bc -l; }


# Set up Node Version Manager
export NVM_DIR="$HOME/.nvm"
export NVM_SOURCE="/usr/share/nvm"
[ -s "$NVM_SOURCE/nvm.sh" ] && . "$NVM_SOURCE/nvm.sh"

# allow user-wide installations of node packages
#PATH="$HOME/.node_modules/bin:$PATH"
#export npm_config_prefix=~/.node_modules

# tools
PATH="$HOME/tools:$PATH"


# fzf
# export FZF_DEFAULT_COMMAND='git ls-files'
# ripgrep for fzf
export FZF_DEFAULT_COMMAND='rg --files'

# navi cheats
export NAVI_PATH="/home/vik/docs/cheat-sheets"


# tmux
# if [[ -z "$TMUX" ]]; then
#  tmux
#fi
# If not running interactively, do not do anything
# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux
if [[ $DISPLAY ]]; then
    # If not running interactively, do not do anything
    [[ $- != *i* ]] && return
    [[ -z "$TMUX" ]] && exec tmux
fi








