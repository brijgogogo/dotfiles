#!/bin/sh

# xinitrc runs automatically when you run startx.

[ -f $CONFIG_DIR/.xprofile ] && . $CONFIG_DIR/.xprofile

# apply .Xresources
[[ -f $CONFIG_DIR/.Xresources ]] && xrdb -merge -I$HOME $CONFIG_DIR/.Xresources

# start urxvt daemon
# urxvtd -q -o -f

[[ -f $CONFIG_DIR/.xbindkeysrc  ]] && $CONFIG_DIR/.xbindkeysrc

echo "$MY_WM"

# autostart X at login
# if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  case "$MY_WM" in
          i3) exec i3 ;;
          dwm) while :; do
                  ssh-agent dwm || break;
                done ;;
          *) echo "No window manager detedtecd." ;;
  esac
#fi

