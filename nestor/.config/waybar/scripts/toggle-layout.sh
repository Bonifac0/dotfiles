#!/usr/bin/env bash

# The exact name from your hyprctl devices output
DEVICE="evision-rgb-keyboard"

# Switch to the next layout (cycles us -> cz -> us)
hyprctl switchxkblayout "$DEVICE" next
