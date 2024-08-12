
#!/bin/bash

# Function to list available drives
list_drives() {
    lsblk -rpo "NAME,MODEL,SIZE,MOUNTPOINT" | grep -E "usb|/dev/sd"
}

# Function to mount a drive
mount_drive() {
    selected_device=$(echo "$1" | awk '{print $1}')
    udisksctl mount -b "$selected_device"
}

# Function to unmount a drive
unmount_drive() {
    selected_device=$(echo "$1" | awk '{print $1}')
    udisksctl unmount -b "$selected_device"
}

# List available drives using rofi
selected_drive=$(list_drives | rofi -dmenu -p "Select Drive")

# Exit if no drive is selected
if [ -z "$selected_drive" ]; then
    exit 1
fi

# Ask if the user wants to mount or unmount the selected drive
action=$(echo -e "Mount\nUnmount" | rofi -dmenu -p "Action")

# Perform the action
if [ "$action" == "Mount" ]; then
    mount_drive "$selected_drive"
elif [ "$action" == "Unmount" ]; then
    unmount_drive "$selected_drive"
else
    exit 1
fi
