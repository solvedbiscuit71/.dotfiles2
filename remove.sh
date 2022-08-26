#!/usr/bin/env fish

for folder in */
  if [ $folder = "git/" ]
    continue
  end

  echo "destow $folder"
  stow -D $folder
end
