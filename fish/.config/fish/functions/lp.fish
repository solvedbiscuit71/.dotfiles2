# lp -> list projects
function lp
  # check for `lp .`
  if [ "$argv[1]" = "." ]
    set folder $PWD
  else
    set folder (find ~/Code ~/.dotfiles2 ~/.dotfiles2/fish/.config/fish  -maxdepth 1 -type d | fzf)
  end

  if [ "$folder" ]
    set folder_name (basename $folder)
    tmux has-session -t=$folder_name 2> /dev/null

    if [ "$status" = "0" ]
      if [ "$TMUX" = "" ]
        tmux attach -t $folder_name
      else
        tmux switch-client -t $folder_name
      end
    else
      if [ "$TMUX" = "" ]
        tmux new-session -s $folder_name -c $folder
      else
        tmux new-session -ds $folder_name -c $folder
        tmux switch-client -t $folder_name
      end
    end
  end
end
