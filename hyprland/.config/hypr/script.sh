#!/usr/bin/env bash

# initializing wallpaper daemon

waybar &
# dunst & #bye bye dunst... swaync is the new love
swaync &
nm-applet --indicator &

xremap ~/.config/xremap/config.yml --watch=config &
