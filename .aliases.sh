# aliases
alias l='ls'
alias la='ls -A'
alias ll='ls -lA'
alias ls='ls --color=auto'
alias vimwiki='vim -c VimwikiIndex'
alias define='googler -n 2 define'
alias music='ncmpcpp -S visualizer'
alias pac='sudo pacman --color auto'
alias merge='xrdb -merge ~/.Xresources'
alias reloadXres='xrdb ~/.Xresources'
alias calc='bc -q'

# aliases config
alias zshc='nvim ~/.zshrc'
alias i3c='nvim ~/.config/i3/config'
alias comptonc='nvim ~/.config/compton.conf'
alias polybarc='nvim ~/.config/polybar/config'
alias xinitrcc='nvim ~/.xinitrc'
alias ncmpcppc='nvim ~/.config/ncmpcpp/config'
alias neofetchc='nvim ~/.config/neofetch/config.conf'
alias rangerc='nvim ~/.config/ranger/rc.conf'

# aliases weather
alias weather="curl -H 'Accept-Language: en' 'wttr.in/?1?n'"
alias weatherCurrent="curl -H 'Accept-Language: en' 'wttr.in/?0?Q'"
alias weatherFull="curl -H 'Accept-Language: en' 'wttr.in/'"
