#!/bin/bash


# Define an associative array of program names and their config file locations
declare -A config_files
config_files["nvim"]="$HOME/.config/nvim/init.vim"
config_files["kitty"]="$HOME/.config/kitty/kitty.conf"
config_files["bashrc"]="$HOME/.bashrc"
config_files["fish"]="$HOME/.config/fish/config.fish"
config_files["zsh"]="$HOME/.zshrc"
config_files["xinitrc"]="$HOME/.xinitrc"
config_files["dmenu"]="$HOME/dmenu/config.h"
config_files["dwm"]="$HOME/dwm/config.h"
config_files["st"]="$HOME/st/config.h"
config_files["xinitrc"]="$HOME/.xinitrc"
# Add more config files here

# Create a menu list for dmenu
menu_list=""
for key in "${!config_files[@]}"; do
    menu_list+="$key\n"
done

# Show the list in dmenu and get the user selection
selected_program=$(echo -e "$menu_list" | dmenu -l 10 -i)


# Open the selected config file in nvim within kitty
if [ -n "$selected_program" ] && [ -n "${config_files[$selected_program]}" ]; then
    kitty lvim "${config_files[$selected_program]}"
else
    echo "No valid selection made."
fi
