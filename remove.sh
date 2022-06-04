#!/usr/bin/env fish

for folder in */
  stow -D $folder
end
