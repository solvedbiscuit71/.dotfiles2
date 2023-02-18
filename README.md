# Prerequisites

Install xcode for developer relation packages (clang, git,.. )
```bash
xcode-select --install
```

Install `homebrew` for package managing,
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Terminal Emulator

we will install the `alacritty` emulator (only for macos)
```bash
/opt/homebrew/bin/brew install --cask alacritty
```

we also need `stow` for dotfiles management
```bash
/opt/homebrew/bin/brew install stow
```

# Shell

In this .dotfiles we use `bash` as default shell
```bash
/opt/homebrew/bin/brew install bash
```

by default, macos uses `zsh` to change it to `bash` run the command,
```bash
echo '/opt/homebrew/bin/bash' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/bash
```

Restarting the computer makes the changes to take effort, then run the command
```bash
export PATH='/opt/homebrew/bin':$PATH
```

# Font

The dotfiles uses `iosevka-term` as the default font-family for alacritty, to install
```bash
brew tap homebrew/cask-fonts
brew install --cask font-iosevka
```

# Neovim

To install neovim,
```bash
brew install neovim
```

and to install the package manager run the command,
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Install

Clone this repository
```bash
git clone https://github.com/solvedbiscuit71/.dotfiles2.git ~/.dotfiles2
```

and run the `install.sh`

## Extras

To add bash completion for command,
```bash
brew install bash-completion
```

To make bash autocompletion case-insensitive run the command,
```bash
echo set completion-ignore-case on | sudo tee -a /etc/inputrc
```

To make `ls` command look better we use `exa` command and have aliased it to `ls`
```bash
brew install exa

# ls='exa -l -s type --no-user --git'
# to use normal ls command type,
# \ls
```
