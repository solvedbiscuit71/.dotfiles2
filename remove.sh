#!/usr/bin/env fish

for folder in */
  if [ $folder = "git/" ]
    continue
  end

  stow -D $folder
end
