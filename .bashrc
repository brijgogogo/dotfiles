#
# ~/.bashrc
#
source ~/.shell_common_rc

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi


# prompt
export PS1='\[\033[00;32m\]\u\[\033[00;33m\]@\[\033[00;32m\]\h\[\033[01;30m\]:\[\033[01;36m\]\w\[\033[01;37m\]$ \[\033[00m\]'
#export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '

# color echo
function echo_blue() { echo -e "\x1b[34m\x1b[1m"$@"\x1b[0m"; }
function echo_green() { echo -e "\x1b[32m\x1b[1m"$@"\x1b[0m"; }
function echo_red() { echo -e "\x1b[31m\x1b[1m"$@"\x1b[0m"; }

# calculator fuction : ? 4+4
function ?() { echo "$*" | bc -l; }
