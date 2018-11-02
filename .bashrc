#
# ~/.bashrc
#
export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="qutebrowser"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi

# aliases
alias ll='ls -la'
alias ls='ls --color=auto'
alias vimwiki='vim -c VimwikiIndex'
alias define='googler -n 2 define'


# prompt
export PS1='\[\033[00;32m\]\u\[\033[00;33m\]@\[\033[00;32m\]\h\[\033[01;30m\]:\[\033[01;36m\]\w\[\033[01;37m\]$ \[\033[00m\]'

# go-lang
export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH

# java
export JAVA_HOME="/usr/lib/jvm/default-runtime"
export PATH=$JAVA_HOME/bin:$PATH

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

export XDG_CONFIG_HOME=~/.config
