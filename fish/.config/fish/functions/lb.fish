function lb
  set folder (find ~/Code ~/.dotfiles2 ~/.wiki -maxdepth 2 -type d -not -path "*/.git/*" | fzf)
  cd $folder
end
