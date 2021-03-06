# Prerequisite

For MacOs (only)
```sh
xcode-select --install
```

HomeBrew (Package Manager)
```sh
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Installation

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

Installing font family,  

(Iosevka Term Curly) which is a part of (Iosevka Curly) is being used for alacritty.  
Download: https://typeof.net/Iosevka/

## Fzf

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

NOTE:  
If, the keybinding or fzf failed to work after setting up the configuration try,
```sh
~/.fzf/install
```

## Configuration

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
