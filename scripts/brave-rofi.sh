#!/bin/sh

# Define the Brave profile directory and Local State file
PROFILE_DIR="$HOME/.config/BraveSoftware/Brave-Browser"
LOCAL_STATE="$PROFILE_DIR/Local State"

# Extract profile names from the Local State file
profiles=$(jq -r '.profile.info_cache | to_entries[] | .value.name + " -- " + .key' "$LOCAL_STATE")

# Use rofi to select a profile
selected_entry=$(echo "$profiles" | rofi -dmenu -i -p "Select Brave Profile:")

# Extract the profile directory from the selected entry
selected_profile=$(echo "$selected_entry" | awk -F ' -- ' '{print $2}')

# If a profile was selected, launch Brave with that profile
if [ -n "$selected_profile" ]; then
	brave --profile-directory="$selected_profile" &
fi
