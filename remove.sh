#!/opt/homebrew/bin/bash

stow_folders=($(ls -l | grep '^d' | grep -v 'git' | awk '{ print $9 }'))
for folder in ${stow_folders[@]}
do
    stow -D $folder
done
