#!/usr/bin/env bash

# Menu: choose Power Profile
PROFILE=$(echo -e "performance\nbalanced\npower-saver" | wofi -i --dmenu --width 250 --height 232 --cache-file /dev/null)

# Apply selection if not empty
if [ -n "$PROFILE" ]; then
    powerprofilesctl set "$PROFILE"
fi
