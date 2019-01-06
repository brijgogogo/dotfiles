#
# ~/.zshrc
#
source ~/.shell_common_rc

HISTFILE=~/.zhistfile
HISTSIZE=1000
SAVEHIST=1000

# use vi mode for key bindings
bindkey -v

#zstyle :compinstall filename '/home/vik/.zshrc'


# command completion
autoload -Uz compinit
compinit

# load prompt theme system
autoload -Uz promptinit
compinit

# left prompt
#PROMPT='%F{red}%n%f@%F{blue}%m%f %F{yellow}%1~%f %# '

# right prompt
#RPROMPT='[%F{yellow}%?%f]'
#prompt walters

# history search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search
