#!/usr/bin/env bash

# The exact name from your hyprctl devices output
DEVICE="at-translated-set-2-keyboard"

# Switch to the next layout (cycles us -> cz -> us)
hyprctl switchxkblayout "$DEVICE" next
