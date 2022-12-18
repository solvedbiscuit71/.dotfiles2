#!/opt/homebrew/bin/bash

config_files=("$HOME/.vimrc" "$HOME/.tmux.conf" "$HOME/.bashrc")
config_folders=("$HOME/.config/nvim/" "$HOME/.config/alacritty/")

for file in ${config_files[@]}
do
    echo $file
    if [[ -f $file ]]; then
	rm $file
    fi
done

for folder in ${config_folders[@]}
do
    echo $folder
    if [[ -d $folder ]]; then
	rm -r $folder
    fi
done

stow_folders=($(ls -l | grep '^d' | grep -v 'git' | awk '{ print $9 }'))
for folder in ${stow_folders[@]}
do
    stow $folder
done

ln -s ~/.bashrc ~/.bash_profile
