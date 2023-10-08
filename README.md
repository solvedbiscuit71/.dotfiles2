# Prerequisites (macOS)

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

# Prerequisites (linux)

We need to update the system packages before proceeding
```sh
sudo apt update
sudo apt upgrade
```

We need to install git version control for install linuxbrew
```sh
sudo apt install build-essential git curl
```

Now, download the installer and install linuxbrew
```sh
curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
/bin/bash install.sh
```

Run the following command to source linuxbrew
```sh
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> .bash_extra
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

After installing, linuxbrew it's recommended that you install the following packages
```sh
brew install gcc git python3
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

## Font family

I personally like to use [Victor Mono](https://rubjo.github.io/victor-mono/) which has all the modern features such an font
ligature and italics (though it doesn't have nerd-icon)

### Linux (only)

After downloading the victor-mono.zip file, extract and move all the files inside TTF directory to ~/.local/share/fonts
```sh
mkdir -p $HOME/.local/share/fonts
sudo cp $HOME/Downloads/TTF/* $HOME/.local/share/fonts
```

And then refresh system's cache or restart your system
```sh
fc-cache -f -v
```

## Shell
```sh
brew install bash fish
```

### macOS

```sh
echo '/opt/homebrew/bin/bash' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/bash
```

### linux

```sh
echo '/home/linuxbrew/.linuxbrew/bin/bash' | sudo tee -a /etc/shells
chsh -s /home/linuxbrew/.linuxbrew/bin/bash
```

For adding environment variable based on your development setup without cluttering your .bashrc or config.fish
use the ~/.bash_extra and ~/.fish_extra files which are automatically sourced.

### Bash (only)
For autocompletion in bash, run the following commands
```sh
brew install bash-completion
echo set completion-ignore-case on | sudo tee -a /etc/inputrc
```

One caveats is to add the following line to your ~/.bash_extra
```sh
# macos
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# linux
[[ -r "/home/linuxbrew/.linuxbrew/etc/profile.d/bash_completion.sh" ]] && . "/home/linuxbrew/.linuxbrew/etc/profile.d/bash_completion.sh"
```

### Terminal emulator
```sh
brew install --cask alacritty
```

### Pretty ls
lsd is a replacement for the traditional ls. we use the alias `l` for executing exa
```sh
brew install lsd
```


## Fast cd
jump is a easy to use fuzzy finder for changing your current directory
```sh
brew install jump
```

After installation you need to source the jump shellevn add the following lines
inside ~/.bash_extra or ~/.fish_extra
```sh
eval "$(jump shell bash)"   # If bash
jump shell fish | source    # If fish
```

## Text editor
neovim is the best text editor (in my opinion) for the terminal. we use the alias `v` for running neovim
```sh
brew install neovim
```

We need to download the plugin manager for neovim (i.e Packer) before entering into neovim
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

If :PackerInstall command is not available, execute
```vim
:source ~/.config/nvim/lua/plugins/init.lua
```

For configuring your lsp, create a server.lua inside the lsp folder which will be automatically sourced
```lua
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = {
    'pylsp',
    'clangd',
    'rust_analyzer',
    -- and more
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
        single_file_support = true,
    }
end
```

## File explorer
nnn is a awesome terminal based file explorer, we use the alias `n` for invoke nnn with some useful arguments
```sh
brew install nnn
```

## Git client
lazygit is a terminal based git client, we use the alias `g` for invoke lazygit
```sh
brew install lazygit
```

## Tiling window manager

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

### Disable animation when automatically hide and show Dock, use

```sh
defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock
```

### Disable yabai from managing specific application, we can set rules in yabai

```sh
#!/bin/bash

yabai -m rule --add app="^Archive Utility\$" manage=off
yabai -m rule --add app="^Digital Colour Meter\$" manage=off sticky=on
yabai -m rule --add app="^Finder\$" manage=off
```
