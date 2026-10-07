#!/usr/bin/env bash

# Hyprlock battery status script with Osaka Jade Pango markup

shopt -s nullglob
bat_dirs=(/sys/class/power_supply/BAT*)
shopt -u nullglob

if [ ${#bat_dirs[@]} -eq 0 ] || [ ! -d "${bat_dirs[0]}" ]; then
    exit 0
fi

bat_dir="${bat_dirs[0]}"

if [ ! -r "$bat_dir/capacity" ] || [ ! -r "$bat_dir/status" ]; then
    exit 0
fi

capacity=$(cat "$bat_dir/capacity" 2>/dev/null)
status=$(cat "$bat_dir/status" 2>/dev/null)

if ! [[ "$capacity" =~ ^[0-9]+$ ]]; then
    exit 0
fi

# Determine Osaka Jade color palette based on capacity
if [ "$capacity" -le 15 ]; then
    color="#ff4f81"
elif [ "$capacity" -le 35 ]; then
    color="#ffc857"
else
    color="#39d98a"
fi

# Determine text and status suffix
if [ "$status" = "Full" ] || [ "$capacity" -ge 100 ]; then
    color="#39d98a"
    text="BATTERY  ${capacity}%  ·  FULL"
elif [ "$status" = "Charging" ]; then
    text="BATTERY  ${capacity}%  ·  CHARGING"
else
    if [ "$capacity" -le 15 ]; then
        text="BATTERY  ${capacity}%  ·  LOW"
    else
        text="BATTERY  ${capacity}%"
    fi
fi

echo "<span foreground=\"$color\">$text</span>"
