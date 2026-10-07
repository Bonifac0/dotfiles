#!/usr/bin/env bash

PROFILE=$(echo -e "performance\nbalanced\npower-saver" | fuzzel --dmenu --lines 3 --width 20 --prompt "Power Profile: ")

# Apply selection if not empty
if [ -n "$PROFILE" ]; then
    powerprofilesctl set "$PROFILE"
fi
