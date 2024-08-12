selected=$(ls ~/dotfiles/scripts/ | rofi -dmenu -p "Run: ")
/bin/sh ~/dotfiles/scripts/$selected
