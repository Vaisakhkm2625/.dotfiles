# Get the current zoom level
current_zoom=$(hyprctl getoption misc:cursor_zoom_factor -j | jq .float)

# Check the current zoom level and toggle between 1 and 1.5
if (($(echo "$current_zoom == 1.0" | bc -l))); then
	hyprctl keyword misc:cursor_zoom_factor 1.5
	echo "Zoom level set to 1.5"
else
	hyprctl keyword misc:cursor_zoom_factor 1
	echo "Zoom level set to 1.0"
fi
