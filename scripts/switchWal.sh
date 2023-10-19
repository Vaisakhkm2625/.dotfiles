#!/bin/sh
wallpaperdir="$HOME/dotfiles/wallpapers/"

walpaper=$(ls $wallpaperdir | rofi -dmenu)

# pkill waybar
# nohup waybar
pkill -SIGUSR2 waybar

wal -i $wallpaperdir/$walpaper
swww img $wallpaperdir/$walpaper --transition-type outer --transition-duration 2 #random
