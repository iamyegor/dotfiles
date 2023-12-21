#!/bin/bash

# Directory containing your wallpapers
WALLPAPER_DIR="$HOME/.config/i3/wallpapers"

# Select a random wallpaper
SELECTED_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the same wallpaper for each monitor
/usr/bin/nitrogen --set-zoom-fill --head=0 "$SELECTED_WALLPAPER" --save
/usr/bin/nitrogen --set-zoom-fill --head=1 "$SELECTED_WALLPAPER" --save
