
__THIS CONFIGURATION IS CREATED AND TESTED ONLY FOR MACOS AND LINUX__

# prerequisites

For macos, we need to install xcode for certain developer tools.
```sh
xcode-select --install
```

we need a package manager, install homebrew (macos and linux)
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## shell

in this .dotfiles we use `fish.sh` as default shell
```sh
brew install fish
```

### set fish as your default shell

```sh
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```

and restart your computer for changes to take place

## terminal

we will install `alacritty` terminal emulator
```sh
brew install --cask alacritty
```

we also need `stow` for dotfiles management
```sh
brew install stow
```

## font

here, we use `iosevka-term-curly-slab` as our default font-family for alacritty
```sh
brew tap homebrew/cask-fonts
brew install --cask font-iosevka-term-curly-slab
```

## fuzzy finder (optional)

fzf is a useful command line utility for searching through a list of items

use cases:
- `C-t` : searching files in cwd
- `C-r` : searching recent commands
- `lp` : it is internally used by `lp` script

```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## vim and neovim (optional)

by default, macos and linux comes pre-installed with `vim` but, you can install both
via homebrew
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

# clone and setup dotfiles

clone this repository into to system (recommended location: `~/.dotfiles2`)
```sh
git clone https://github.com/solvedbiscuit71/.dotfiles2.git ~/.dotfiles2
```

before running the `install.sh` script we need to add `stow` to the path!
```sh
fish_add_path /opt/homebrew/bin/
```

then, run the install script
```sh
cd ~/.dotfiles2
chmod 744 install.sh remove.sh
fish install.sh
```
