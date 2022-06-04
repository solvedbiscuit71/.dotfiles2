#!/opt/homebrew/bin/fish

# removing existing files
set files "$HOME/.vimrc" "$HOME/.gitconfig"
set dirs "$HOME/.config/alacritty/" "$HOME/.config/fish/"

for file in $files
  if test -e $file
    rm $file
  end
end

for dir in $dirs
  if test -d $dir
    rm -r $dir
  end
end

# creating links
for folder in */
  /opt/homebrew/bin/stow $folder
end

exit 0
