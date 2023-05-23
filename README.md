# Prerequisites

**Developer toolkit**: XCode
```sh
xcode-select --install
```

**Package manager**: Homebrew
```sh
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Terminal emulator**: Alacritty
```sh
/opt/homebrew/bin/brew install --cask alacritty
```

**Dotfiles manager**: Stow
```sh
/opt/homebrew/bin/brew install stow
```

**Shell**: Fish
```sh
/opt/homebrew/bin/brew install fish
```

```sh
echo '/opt/homebrew/bin/fish' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```

-- Restart your system --

**Font family**: [Victor Mono](https://rubjo.github.io/victor-mono/)

**Text editor**: Neovim
```sh
brew install neovim
```

**Noevim's plugin manager**: Packer
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Cloning

```sh
git clone https://github.com/solvedbiscuit71/.dotfiles2.git ~/.dotfiles2
cd ~/.dotfiles2
```

**Install**
```sh
./install.sh
```

**Uninstall**
```sh
./uninstall.sh
```

# Add-ons

Nice ls: exa
```sh
brew install exa
```

Auto completion: bash-completion
```sh
brew install bash-completion
echo set completion-ignore-case on | sudo tee -a /etc/inputrc
```

Command history: z
```sh
brew install fisher
fisher install jethrokuan/z
```

Window manager: yabai
```sh
brew install yabai
```

Hotkeys manager: skhd
```sh
brew install skhd
```

Scripting addition: unlocks more features in yabai (requires partially disabling [System Integrity Protection](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection))
```sh
sudo echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" > /private/etc/sudoers.d/yabai
```

Start at login: launchd
```sh
yabai --start-service
skhd --start-service
```

