# lp -> list projects
function lp
  if [ "$argv[1]" = "." ]
    tmux new-session -s (basename $PWD) -c .
  else
    set folder (find ~/Code ~/.dotfiles2 ~/.dotfiles2/fish/.config/fish  -maxdepth 1 -type d | fzf)
    if [ "$folder" ]
      tmux new-session -s (basename $folder) -c $folder
    end
  end
end
