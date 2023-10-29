#!/bin/sh
wallpaperdir="$HOME/dotfiles/wallpapers/"

walpaper=$(ls $wallpaperdir | rofi -dmenu)

# pkill waybar
# nohup waybar

wal -i $wallpaperdir/$walpaper
swww img $wallpaperdir/$walpaper --transition-type outer --transition-duration 2 #random

pkill -SIGUSR2 waybar
