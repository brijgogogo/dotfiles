#!/bin/sh

case "$1" in
    lock)
        #i3lock -c 000000
        /bin/bash ~/.config/i3/betterlockscreen.sh -l
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend | /bin/bash ~/.config/i3/betterlockscreen.sh -l
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
