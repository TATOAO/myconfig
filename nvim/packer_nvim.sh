home='/Users/tatoaoliang'
config_desitination_folder="$home/Downloads/neovim_packed"
dt=$(date '+%Y-%m-%d')
# zip config 
cd "$home/.config/"
# zip -r "$config_desitination_folder/nvim_config_$dt.zip"  "./nvim/"
tar -czvf "$config_desitination_folder/nvim_config_$dt.tar.gz" "./nvim"
cd "$home/.local/share/"
tar -czvf "$config_desitination_folder/nvim_package_$dt.tar.gz" "./nvim"
# zip -r "$config_desitination_folder/nvim_package_$dt.zip"  "./nvim/"



