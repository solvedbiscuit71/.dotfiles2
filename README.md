# Prerequisites

Install xcode for developer relation packages (clang, git,.. )
```bash
xcode-select --install
```

Install `homebrew` for package managing,
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Terminal Emulator

we will install the `alacritty` emulator (only for macos)
```bash
/opt/homebrew/bin/brew install --cask alacritty
```

we also need `stow` for dotfiles management
```bash
/opt/homebrew/bin/brew install stow
```

## Shell

In this .dotfiles we support both `bash` and `fish`
```bash
/opt/homebrew/bin/brew install bash
/opt/homebrew/bin/brew install fish
```

by default, macos uses `zsh` but, we can change the login shell
```bash
echo '/opt/homebrew/bin/<shell>' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/<shell>
```

__NOTE__: font-family used for alacritty is _Victor Mono_ and free to download [here](https://rubjo.github.io/victor-mono/)

## Neovim

To install neovim,
```bash
/opt/homebrew/bin/brew install neovim
```

and to install the package manager run the command,
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Installation

Clone this repository
```bash
git clone https://github.com/solvedbiscuit71/.dotfiles2.git ~/.dotfiles2
```

and run the `install.sh`

# Extras

To make `ls` command look better we use `exa` command and have aliased it to `ls`
```bash
/opt/homebrew/bin/brew install exa
```

## bash

To add bash completion install,
```bash
brew install bash-completion
```

To make bash autocompletion case-insensitive run the command,
```bash
echo set completion-ignore-case on | sudo tee -a /etc/inputrc
```

## fish.sh

To install `z` command for fish shell
```bash
/opt/homebrew/bin/brew install fisher
/opt/homebrew/bin/fisher install jethrokuan/z
```

## yabai and skhd

install yabai and skhd using homebrew
```bash
brew install yabai skhd
```

Since, we are using scripting-addition we need to update the sudoers file
```bash
sudo visudo -f /private/etc/sudoers.d/yabai
```

and enter the output of the following command,
```bash
echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa"
```

To manage yabai and skhd by launchd (start automatically upon login) use
```bash
yabai --start-service
skhd --start-service
```

