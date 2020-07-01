#
# ~/.bashrc
#
# [ -n "$PS1" ] && source ~/.bash_profile;

# aliases
if [ -f "$CONFIG_DIR/aliasrc" ]; then
  source "$CONFIG_DIR/aliasrc"
fi

# vi mode in bash
set -o vi


RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
PURPLE="\[$(tput setaf 4)\]"
PINK="\[$(tput setaf 5)\]"
BLUE="\[$(tput setaf 6)\]"
GRAY="\[$(tput setaf 7)\]"
RESET="\[$(tput sgr0)\]"

# prompt
export PS1="${BLUE}\u${GRAY}@${YELLOW}\h${GREEN}:${PURPLE}\W${RESET}$ "
# export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
#PS1='[\u@\h \W]\$ '


# set term only if not in tmux
# [ -z "$TMUX" ] && export TERM=xterm-256color

# check number of colors supported
# tput colors

# If not running interactively, do not do anything
# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux
# if [[ $DISPLAY ]]; then
    # If not running interactively, do not do anything
    # [[ $- != *i* ]] && return
    #[[ -z "$TMUX" ]] && exec tmux # uncomment this to start tmux by default
# fi



# prompt
# show diffent prompt in nvim terminal buffer
# if [ -n " $NVIM_LISTEN_ADDRESS " ]; then export PS1="» "
# else
  # export PS1= "\$ "
#   export PS1='\[\033[00;32m\]\u\[\033[00;33m\]@\[\033[00;32m\]\h\[\033[01;30m\]:\[\033[01;36m\]\w\[\033[01;37m\]$ \[\033[00m\]'
# fi

# prevent nesting of nvim
# if [ -n " $NVIM_LISTEN_ADDRESS " ];
# then
#   if [ -x " $(command -v nvr) " ];
#   then
#      alias nvim=nvr
#    else
#      alias nvim='echo "No nesting!"'
#    fi
# fi


# cd on quit of nnn
n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "export" as in:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    # NOTE: NNN_TMPFILE is fixed, should not be modified
    # export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

export GOPATH="$HOME/go"
export PATH="$PATH:$HOME/go/bin"



export TMUXP_CONFIGDIR=$CONFIG_DIR/.tmuxp


# tmux
# if [[ "$TERM" != "screen-256color" && $DISPLAY ]]; then
#  tmux attach-session -t "$USER" || tmux new-session -s "$USER"
# fi

