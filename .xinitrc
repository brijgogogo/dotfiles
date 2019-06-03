#! /bin/bash
# apply .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I%HOME ~/.Xresources

# start urxvt daemon
urxvtd -q -o -f

# start i3
exec i3

# start dunst
exec dunst

# set random wallpaper
#~/.fehbg &
#feh --recursive --randomize --bg-fill ~/Dropbox/walls/* &

[[ -f ~/.xbindkeysrc  ]] && ~/.xbindkeysrc


