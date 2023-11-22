if [[ "$(swww query)" == *"nixos"* ]]; then
	swww img ~/dotfiles/wallpapers/default.png --transition-type grow --transition-pos 2525,1650

else
	swww img ~/dotfiles/wallpapers/nixos.png --transition-type grow --transition-pos 2525,1650
	pkill -SIGUSR1 waybar
fi
