# Prerequisites

For macos, we need to install xcode for certain developer tools.
```sh
xcode-select --install
```

we need a package manager, install homebrew (macos and linux)
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Shell

in this .dotfiles we use `bash` as default shell
```sh
/opt/homebrew/bin/brew install bash
```

by default, macos uses `zsh` as its default shell to change it bash,
```sh
echo '/opt/homebrew/bin/bash' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/bash
```

after restarting the computer, open the terminal and run the following command
```sh
export PATH='/opt/homebrew/bin':$PATH
```

# Terminal Emulator

we will install the `alacritty` emulator (only for macos)
```sh
brew install --cask alacritty
```

we also need `stow` for dotfiles management
```sh
brew install stow
```

# Font

here, we use `iosevka-term` as our default font-family for alacritty
```sh
brew tap homebrew/cask-fonts
brew install --cask font-iosevka
```

# Vim and Neovim

To install vim and neovim run the following command,
```sh
brew install vim neovim
```

both vim and neovim using `vim-plug` and `packer.nvim` as its package manager
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Install

clone this repository
```sh
git clone https://github.com/solvedbiscuit71/.dotfiles2.git ~/.dotfiles2
```

and run the `install.sh`
