# Profile file. Runs on login. Environmental variables are set here.

# config paths
CONFIG_DIR="$HOME/.config"
export CONFIG_DIR

# tools
export PATH="$CONFIG_DIR/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# window manager
# export MY_WM="i3"
export MY_WM="dwm"

# Default programs:
export EDITOR="nvim"
export VISUAL='nvim'
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="nnn"
export STATUSBAR="${MY_WM}blocks"

export INPUTRC="$CONFIG_DIR/inputrc"
export ZDOTDIR="$CONFIG_DIR/zsh"
export BASHDOTDIR="$CONFIG_DIR/bash_dir"
export PASSWORD_STORE_DIR="$CONFIG_DIR/share/password-store"

# Other program settings:
export DICS="/usr/share/stardict/dic/"
export SUDO_ASKPASS="$CONFIG_DIR/bin/dmenupass"
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"


# read .bashrc
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi


mpd >/dev/null 2>&1 &

# [ ! -f "$CONFIG_DIR/shortcutrc" ] && shortcuts >/dev/null 2>&1

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.git-completion.bash ] && source ~/.git-completion.bash

# color echo
function echo_blue() { echo -e "\x1b[34m\x1b[1m"$@"\x1b[0m"; }
function echo_green() { echo -e "\x1b[32m\x1b[1m"$@"\x1b[0m"; }
function echo_red() { echo -e "\x1b[31m\x1b[1m"$@"\x1b[0m"; }

# calculator fuction : ? 4+4
function ?() { echo "$*" | bc -l; }



# Switch escape and caps if tty and no passwd required:
# sudo -n loadkeys ~/.local/share/larbs/ttymaps.kmap 2>/dev/null



# fzf
# export FZF_DEFAULT_COMMAND='git ls-files'
# ripgrep for fzf
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden --ignore'
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"

# navi cheats
# export NAVI_PATH="/home/vik/docs/cheat-sheets"


# nnn
# bookmarks
export NNN_BMS='d:~/docs/;D:~/Downloads/;c:~/docs/cloud/;s:~/docs/screenshots/;w:~/docs/work/'
export NNN_USE_EDITOR=1                                 # use the $EDITOR when opening text files
# export NNN_SSHFS_OPTS="sshfs -o follow_symlinks"        # make sshfs follow symlinks on the remote
# export NNN_COLORS="2136"                        # use a different color for each context
# export NNN_TRASH=1                                      # trash (needs trash-cli) instead of delete
# promp indicating shell exit will take you back to nnn
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"


# nnn plugins
export NNN_PLUG='o:fzopen;p:mocplay;d:diffs;m:nmount;n:notes;v:imgviu;t:imgthumb'


# Load the shell dotfiles, and then some:
#for file in "$CONFIG_DIR/.{path,bash_prompt,exports,aliases,functions,extra}"; do
#	[ -r "$file" ] && [ -f "$file" ] && source "$file";
#done;
# unset file;


# https://github.com/search?o=desc&q=dotfiles&s=stars&type=Repositories

# allow user-wide installations of node packages
# PATH="$HOME/.node_modules/bin:$PATH"
# export npm_config_prefix=~/.node_modules


  # https://wiki.archlinux.org/index.php/Node.js_
  # Set up Node Version Manager
  source /usr/share/nvm/init-nvm.sh
  # export NVM_DIR="$HOME/.nvm"
  # export NVM_SOURCE="/usr/share/nvm"
  # [ -s "$NVM_SOURCE/nvm.sh" ] && . "$NVM_SOURCE/nvm.sh"

# npm path
# export PATH=$(npm bin):$PATH

# If running interactively, return
if [[ $- == *i* ]]; then
  export my_name="brij"

else
  export my_name="brij11"
  # export NVM_DIR="$HOME/.nvm"
  # [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
fi

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
