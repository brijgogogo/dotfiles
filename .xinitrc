#! /bin/bash
# apply .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I%HOME ~/.Xresources

# start urxvt daemon
/usr/bin/urxvtd -q -o -f &

# start i3
exec i3

# set random wallpaper
#~/.fehbg &
#feh --recursive --randomize --bg-fill ~/Dropbox/walls/* &

[[ -f ~/.xbindkeysrc  ]] && ~/.xbindkeysrc


