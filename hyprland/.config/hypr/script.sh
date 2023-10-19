#!/usr/bin/env bash

# initializing wallpaper daemon

waybar &
dunst &
nm-applet --indicator &

xremap ~/.config/xremap/config.yml --watch=config &
