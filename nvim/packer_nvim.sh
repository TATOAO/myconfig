home='/home/atatlan'
config_desitination_folder="$home/Downloads/neovim_packed"
dt=$(date '+%Y-%m-%d')
# zip config 
cd "$home/.config/"
zip -r "$config_desitination_folder/nvim_config_$dt.zip"  "./nvim/"
cd "$home/.local/share/"
zip -r "$config_desitination_folder/nvim_package_$dt.zip"  "./nvim/"



