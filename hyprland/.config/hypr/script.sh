#!/usr/bin/env bash

# initializing wallpaper daemon

waybar &
# dunst & #bye bye dunst... swaync is the new love
swaync &
nm-applet --indicator &

pkill xremap
xremap ~/.config/xremap/config.yml --watch=config &

#bash ~/dotfiles/scripts/suspendidle.sh &

wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &

sway-audio-idle-inhibit &
