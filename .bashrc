#
# ~/.bashrc
#
# [ -n "$PS1" ] && source ~/.bash_profile;


export my_name1="vicky"

# aliases
if [ -f "$CONFIG_DIR/aliasrc" ]; then
  source "$CONFIG_DIR/aliasrc"
fi

# nnn
# bookmarks
export NNN_BMS='d:~/docs/;D:~/Downloads/;c:~/docs/cloud/;s:~/docs/screenshots/;w:~/docs/work/'
export NNN_USE_EDITOR=1                                 # use the $EDITOR when opening text files
# export NNN_SSHFS_OPTS="sshfs -o follow_symlinks"        # make sshfs follow symlinks on the remote
# export NNN_COLORS="2136"                        # use a different color for each context
# export NNN_TRASH=1                                      # trash (needs trash-cli) instead of delete
# promp indicating shell exit will take you back to nnn
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"

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

# nnn plugins
export NNN_PLUG='o:fzopen;p:mocplay;d:diffs;m:nmount;n:notes;v:imgviu;t:imgthumb'

# tmux
# if [[ -z "$TMUX" ]]; then
#  tmux
#fi
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

RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
PURPLE="\[$(tput setaf 4)\]"
PINK="\[$(tput setaf 5)\]"
BLUE="\[$(tput setaf 6)\]"
GRAY="\[$(tput setaf 7)\]"
RESET="\[$(tput sgr0)\]"

PS1="${BLUE}\u${GRAY}@${YELLOW}\h${GREEN}:${PURPLE}\W${RESET}$ "

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






