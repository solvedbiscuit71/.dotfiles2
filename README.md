# Prerequisites

We need to install a few packages before setup,
1. Xcode
2. Homebrew
3. Python

XCode
```sh
xcode-select --install
```

Homebrew
```sh
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

and add brew to the PATH
```sh
export PATH="/opt/homebrew/bin/brew:$PATH"
```

Python
```sh
brew install python3
```

# Setup

```sh
git clone https://github.com/solvedbiscuit71/.dotfiles2.git ~/.dotfiles2
cd ~/.dotfiles2
```

To create the symlink for configuration file use,
```sh
python3 .script/init.py
```

To remove the symlink for configuration file use,
```sh
python3 .script/deinit.py
```

# Recommendation

Font family: [Victor Mono](https://rubjo.github.io/victor-mono/)

### Better shell: Fish
```sh
/opt/homebrew/bin/brew install fish
```

```sh
echo '/opt/homebrew/bin/fish' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```

### Nice terminal emulator: Alacritty
```sh
/opt/homebrew/bin/brew install --cask alacritty
```

### Pretty ls: exa (alias as `ls`)
```sh
brew install exa
```

### Auto completion: bash-completion
```sh
brew install bash-completion
echo set completion-ignore-case on | sudo tee -a /etc/inputrc
```

### Fash Directory hopping: z
```sh
brew install fisher
fisher install jethrokuan/z
```

### Text Editor: nvim (alias as `vi`)
```sh
brew install neovim
```

we also need to download the plugin manager for neovim (i.e Packer)
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

if :PackerInstall command is not avaiable, execute
```vim
:source ~/.config/nvim/lua/plugins/init.lua
```

for lsp support, create a file `~/.config/nvim/lua/protocals/server.lua` which
returns a table of supported lsp server names
```lua
-- sample server.lua
return {
    'html',
    'cssls',
    'tsserver',
}
```

### File explorer: ranger (alias as `re`)
```sh
brew install ranger
```

### Git client: lazygit (alias as `lg`)
```sh
brew install lazygit
```

## Tiling Window manager

```sh
brew install yabai skhd
```

To unlocks more features in yabai partially disabling [System Integrity Protection](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection)
```sh
sudo echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" > /private/etc/sudoers.d/yabai
```

To make yabai and skhd start at login, run
```sh
yabai --start-service
skhd --start-service
```

To restart yabai and skhd, run
```sh
yabai --restart-service
skhd -r
```

To disable animation when automatically hide and show Dock, use
```sh
defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock
```
