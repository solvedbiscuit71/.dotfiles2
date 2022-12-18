# Prerequisites

For macos, we need to install xcode for certain developer tools.
```bash
xcode-select --install
```

we need a package manager, install homebrew (macos and linux)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Shell

in this .dotfiles we use `bash` as default shell
```bash
/opt/homebrew/bin/brew install bash
```

by default, macos uses `zsh` as its default shell to change it bash,
```bash
echo '/opt/homebrew/bin/bash' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/bash
```

after restarting the computer, open the terminal and run the following command
```bash
export PATH='/opt/homebrew/bin':$PATH
```

# Terminal Emulator

we will install the `alacritty` emulator (only for macos)
```bash
brew install --cask alacritty
```

we also need `stow` for dotfiles management
```bash
brew install stow
```

# Font

here, we use `iosevka-term` as our default font-family for alacritty
```bash
brew tap homebrew/cask-fonts
brew install --cask font-iosevka
```

# Neovim

To install neovim,
```bash
brew install neovim
```

and we also need to install the package manager for neovim
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Install

clone this repository
```bash
git clone https://github.com/solvedbiscuit71/.dotfiles2.git ~/.dotfiles2
```

and run the `install.sh`
