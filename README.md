# prerequisite

For MacOs (only)
```sh
xcode-select --install
```

HomeBrew (Package Manager)
```sh
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# installation

Installing fish.sh (shell) and alacritty (terimal emulator)
```sh
/opt/homebrew/bin/brew install fish
/opt/homebrew/bin/brew install --cask alacritty
```

Setting default to fish.sh
```sh
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```

## nerdfont

Installing nerdfont (support icons)
check out: https://www.nerdfonts.com/font-downloads

```sh
/opt/homebrew/bin/brew tap homebrew/cask-fonts
/opt/homebrew/bin/brew install --cask font-victor-mono-nerd-font
```

## fzf

fzf (fuzzy finder) useful for searching a list of items (uses grep internally)  
uses:
* `C-t` finding files
* `C-r` finding recent commands
* `lp` list projects using fzf

install by,
```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## configuration

Cloning .dotfiles2 to your system
```sh
git clone https://github.com/solvedbiscuit71/.dotfiles2.git ~/.dotfiles2
```

and, run
```sh
~/.dotfiles2/install.sh
```

or
```sh
~/.dotfiles2/remove.sh
```

NOTE:  
if you encounter access denied when running `~/.dotfiles/<name>.sh`
```sh
cd ~/.dotfiles2
chmod 744 install.sh remove.sh
```
