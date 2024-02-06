# #!/bin/sh

# wall=$(find /mnt/entertainment/anime_wallpapers/ -type f -name "*.jpg" -o -name "*.png" | shuf -n 1)

# # add background wallpaper
# xwallpaper --output DP-0 --zoom $wall --output HDMI-0 --zoom $wall --output DP-3 --zoom $wall

# # generate color scheme
# wal -c
# wal -i $wall

# xdotool key super+F5
#------------------------------------------------------------
# Path to the wallpaper directory
WALLPAPER_DIR="/mnt/ext4_fast/Downloads/gaming_wallpaper/"

while true; do
    # Select a random wallpaper
    wall=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" \) | shuf -n 1)

    # Set the selected wallpaper on all monitors
    xwallpaper --output DP-0 --maximize "$wall" --output HDMI-0 --maximize "$wall" --output DP-3 --maximize "$wall"

    # Clear the current color scheme
    wal -c

    # Generate a new color scheme based on the wallpaper
    wal -i "$wall"

    # Refresh i3blocks or polybar (if you're using them)
    # Comment out the following line if not required
    xdotool key super+F5

    # Wait for 1 minute before changing the wallpaper again
    sleep 3600
done
