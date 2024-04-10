is_blur_enabled() {
	blur_status=$(hyprctl getoption decoration:blur:enabled -j | jq -r .int)
	echo $blur_status
	[[ $blur_status == 1 ]]
}

# Function to toggle blur
toggle_blur() {
	if is_blur_enabled; then
		echo "Disabling blur"
		hyprctl keyword decoration:blur:enabled false
	else
		echo "Enabling blur"
		hyprctl keyword decoration:blur:enabled true
	fi
}

# Main script
toggle_blur
