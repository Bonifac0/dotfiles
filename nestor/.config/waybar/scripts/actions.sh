#!/usr/bin/env bash

case "$1" in
audio)
    if pgrep -x pavucontrol >/dev/null; then
        pkill pavucontrol
    else
        pavucontrol &
    fi
    ;;

network)
    if pgrep -x nm-connection >/dev/null; then
        pkill nm-connection-editor
    else
        nm-connection-editor &
    fi
    ;;

btop)
    if pgrep -x btop >/dev/null; then
        pkill btop
    else
        kitty --app-id=btop -e btop &
    fi
    ;;

layout)
    DEVICE="evision-rgb-keyboard"
    hyprctl switchxkblayout "$DEVICE" next
    ;;
esac
