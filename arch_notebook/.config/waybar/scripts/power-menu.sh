#!/bin/bash

op=$(echo -e "  Shutdown\n󰑐  Reboot\n  Suspend\n󰍃  Logout" | fuzzel --dmenu --lines 4 --width 18 --prompt "Power: ")

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
