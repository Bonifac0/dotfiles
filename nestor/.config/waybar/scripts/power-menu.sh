#!/bin/bash

op=$(printf " Shutdown\n󰑐 Reboot\n Suspend\n󰍃 Logout\n" \
    | fuzzel --dmenu --prompt="Power > ")

case $op in
    " Shutdown")
        systemctl poweroff
        ;;
    "󰑐 Reboot")
        systemctl reboot
        ;;
    " Suspend")
        systemctl suspend
        ;;
    "󰍃 Logout")
        hyprctl dispatch 'hl.dsp.exit()'
        ;;
esac
