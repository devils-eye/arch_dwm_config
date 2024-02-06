#!/bin/bash

update_packages(){
  sudo pacman -Syu
}

install_programs(){
  sudo pacman -S git neovim vim zip wget libxft libxinerama zsh python-pywal xwallpaper xdotool xcompmgr opera make kitty
}

clone_repos(){
  git clone https://github.com/devils-eye/arch_dwm_config.git
  git clone https://aur.archlinux.org/paru.git
  git clone https://aur.archlinux.org/yay.git
  git clone https://aur.archlinux.org/snapd.git
}

update_packages
install_programs
clone_repos

# copying dwm dmenu slstatus st to home
cp -r arch_dwm_config/dmenu /home/ranjith/
cp -r arch_dwm_config/dwm /home/ranjith/
cp -r arch_dwm_config/st /home/ranjith/
cp -r arch_dwm_config/slstatus /home/ranjith/

# installing dwm, st, slstatus
install_main(){
  local directory="$1"

  # Check if the directory exists
  if [ -d "$directory" ]; then
      echo "Entering directory: $directory"
      cd "$directory" || return  # Change to the directory or exit the function if it fails

      echo "Installing programs from $directory"
      sudo make clean install
  else
      echo "Directory not found: $directory"
  fi
}

# install dwm
install_main "/home/ranjith/dwm/"
install_main "/home/ranjith/st/"
install_main "/home/ranjith/slstatus/"
install_main "/home/ranjith/dmenu/"


# installing oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# Installing all repos downloaded from github
# Function to build and install package from a given directory
build_and_install_package() {
    local directory="$1"  # The first argument to the function is the directory name

    # Check if the directory exists
    if [ -d "$directory" ]; then
        echo "Entering directory: $directory"
        cd "$directory" || return  # Change to the directory or exit the function if it fails

        echo "Running makepkg -si in $directory"
        makepkg -si
    else
        echo "Directory not found: $directory"
    fi
}

# Example usage of the function
build_and_install_package "/home/ranjith/paru/"
build_and_install_package "/home/ranjith/yay/"
build_and_install_package "/home/ranjith/snapd/"

# creating directory in local
mkdir -p /home/ranjith/.local/bin/

# copying scripts from scritp folder to bin
cp -r /home/ranjith/arch_dwm_config/scripts/* /home/ranjith/.local/bin/

# changing permission to executable
chmod +x /home/ranjith/.local/bin/*

# installing syntax highlighting
yay -S zsh-syntax-highlighting
