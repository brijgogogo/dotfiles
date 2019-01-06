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

