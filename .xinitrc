#!/bin/sh

# xinitrc runs automatically when you run startx.

[ -f $CONFIG_DIR/.xprofile ] && . $CONFIG_DIR/.xprofile

# apply .Xresources
[[ -f $CONFIG_DIR/.Xresources ]] && xrdb -merge -I$HOME $CONFIG_DIR/.Xresources

# start urxvt daemon
# urxvtd -q -o -f

# [[ -f $CONFIG_DIR/.xbindkeysrc  ]] && $CONFIG_DIR/.xbindkeysrc

# exec dwm > ~/dwm.log
# exec startdwm
# exec i3


# echo "starting $MY_WM"

if [[ $XDG_VTNR -eq 1 ]]; then
	exec startdwm
elif [[ $XDG_VTNR -eq 2 ]]; then
	exec i3
fi

# autostart X at login
# if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
 #   case "$MY_WM" in
  #          i3) exec i3 ;;
   #         dwm) exec startdwm ;;
    #        *) echo "No window manager detected." ;;
#    esac
# fi

