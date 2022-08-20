#!/opt/homebrew/bin/fish

set files "$HOME/.gitconfig" "$HOME/.tmux.conf"
set dirs "$HOME/.config/nvim/" "$HOME/.config/alacritty/" "$HOME/.config/fish/"

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

for folder in */
  if [ $folder = "git/" ]
    continue
  end

  echo "stow $folder"
  /opt/homebrew/bin/stow $folder
end

ln -s ~/.fzf/shell/key-bindings.fish ~/.dotfiles2/fish/.config/fish/functions/fzf_key_bindings.fish 2> /dev/null

exit 0
