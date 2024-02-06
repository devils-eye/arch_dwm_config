# arch_dwm_config
    During Installation select xorg in profile this will install xorg so I don't have to install again

## After Installing archlinux Things to do

    * Install git
    ```
    sudo pacman -S git

    ```
    * Next clone the repository
    * Next Step is Installing DWM but before that install necessary packages
    ```
    sudo pacman -S libxft libxinerama

    ```
    * Next install st and dmenu from repo 

    * Copy .xinitrc from repo to home

    * Copy script inside script folder from repo to .local/bin/

    * Install pikaur and yay
    ```
    git clone https://aur.archlinux.org/paur.git
    cd paru
    makepkg -si

    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si

    ```

    * Install necessary nerd fonts

    * Install zsh and oh-my-zsh

    * Install zsh-syntax-highlighting
    ```
    yay -S zsh-syntax-highlighting

    ```

    * Install xwallpaper and pywal and xdotool(changing color scheme without closing)
    ```
    sudo pacman -S python-pywal xwallpaper xdotool

    ```
    * For transparency install xcompmgr
    ```
    sudo pacman -S xcompmgr

    ```


## Mounting Partitions fstab
```
UUID=5CC658CFC658AB52	/mnt/fast_storage	ntfs	defaults	0	0
UUID=17e7dc3f-efd5-4b90-84fe-f50219900697	/mnt/ext4_fast	ext4	defaults	0	0
UUID=A6F45101F450D4E1	/mnt/junk	ntfs	defaults	0	0
UUID=E838CC9638CC64E2	/mnt/programming	ntfs	defaults	0	0
UUID=62044A44044A1C03	/mnt/entertainment	ntfs	defaults	0	0

```
