#!/bin/sh

xset r rate 300 100 &
setxkbmap -option caps:swapescape &
xrandr --output DP-0 --mode 2560x1440 --primary --output DP-3 --mode 1920x1080 --left-of DP-0  --output HDMI-0 --mode 1920x1080 --right-of DP-0 &
numlockx &
xcompmgr &
slstatus &
xset s off -dpms &
/home/ranjith/.local/bin/nl &

exec dwm
