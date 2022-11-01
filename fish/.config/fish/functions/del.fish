function del
  for folder in $argv
    chmod -R 744 $folder
    rm -R $folder
  end
end
