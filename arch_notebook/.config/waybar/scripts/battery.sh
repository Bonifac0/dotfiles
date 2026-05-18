#!/usr/bin/env bash

BAT_PATH="/sys/class/power_supply/BAT0"

if [ ! -d "$BAT_PATH" ]; then
    echo " N/A"
    exit 1
fi

PERC=$(cat "$BAT_PATH/capacity")
STATUS=$(cat "$BAT_PATH/status")

# Choose icon
if [ "$STATUS" = "Charging" ]; then
    ICON=""
elif [ "$PERC" -ge 90 ]; then
    ICON=""
elif [ "$PERC" -ge 70 ]; then
    ICON=""
elif [ "$PERC" -ge 50 ]; then
    ICON=""
elif [ "$PERC" -ge 30 ]; then
    ICON=""
else
    ICON=""
fi

# Get current active power profile
CURRENT_PROFILE=$(powerprofilesctl get)

# Output JSON for Waybar
echo "{\"text\": \"$ICON $PERC%\", \"tooltip\": \"Power Profile: $CURRENT_PROFILE\"}"
