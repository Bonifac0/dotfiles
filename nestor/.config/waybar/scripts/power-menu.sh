#!/bin/bash

op=$(echo -e "  Shutdown\n󰑐  Reboot\n  Suspend\n󰍃  Logout" | wofi -i --dmenu --width 200 --height 285 --cache-file /dev/null)

case $op in
    "  Shutdown")
        systemctl poweroff
        ;;
    "󰑐  Reboot")
        systemctl reboot
        ;;
    "  Suspend")
        systemctl suspend
        ;;
    "󰍃  Logout")
        hyprctl dispatch exit
        ;;
esac
