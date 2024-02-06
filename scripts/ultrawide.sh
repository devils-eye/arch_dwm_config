#!/bin/sh

WALLPAPER_DIR="/mnt/ext4_fast/Downloads/ultrawide/"

while true; do
    # Select a random wallpaper
    wall=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" \) | shuf -n 1)

    # Set the selected wallpaper on all monitors
    xwallpaper --zoom "$wall" 

    # Clear the current color scheme
    wal -c

    # Generate a new color scheme based on the wallpaper
    wal -i "$wall"

    # Refresh i3blocks or polybar (if you're using them)
    # Comment out the following line if not required
    xdotool key super+F5

    # Wait for 1 minute before changing the wallpaper again
    sleep 60
done
