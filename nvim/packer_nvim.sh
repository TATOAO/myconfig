#!/bin/bash

# Set the home directory based on the current user
home="$HOME"

# Define the destination folder for the config files
config_destination_folder="$home/Downloads/neovim_packed"

# Get the current date in YYYY-MM-DD format
dt=$(date '+%Y-%m-%d')

# Create the destination directory if it does not exist
mkdir -p "$config_destination_folder"

# Change to the .config directory and tar the nvim config
cd "$home/.config/"
tar -czvf "$config_destination_folder/nvim_config_$dt.tar.gz" "./nvim"

# Change to the .local/share directory and tar the nvim data
cd "$home/.local/share/"
tar -czvf "$config_destination_folder/nvim_package_$dt.tar.gz" "./nvim"

# mkdir -p "$HOME/.config/nvim" 
# tar -xzvf neovim_plugins.tar.gz -C "$HOME/.config/"
