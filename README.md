# Prerequisites

**Developer toolkit**: XCode
```bash
xcode-select --install
```

**Package manager**: Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Terminal emulator**: Alacritty
```bash
/opt/homebrew/bin/brew install --cask alacritty
```

**Dotfiles manager**: Stow
```bash
/opt/homebrew/bin/brew install stow
```

**Shell**: bash | fish
```bash
/opt/homebrew/bin/brew install bash
/opt/homebrew/bin/brew install fish
```

```bash
echo '/opt/homebrew/bin/<shell>' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/<shell>
```

**Font family**: [Victor Mono](https://rubjo.github.io/victor-mono/)

**Text editor**: Neovim
```bash
/opt/homebrew/bin/brew install neovim
```

**Noevim's plugin manager**: Packer
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Cloning

```bash
git clone https://github.com/solvedbiscuit71/.dotfiles2.git ~/.dotfiles2
cd ~/.dotfiles2
```

**Install**: run install.sh
**Uninstall**: run uninstall.sh

# Add-ons

Nice ls: exa
```bash
brew install exa
```

Auto completion: bash-completion
```bash
brew install bash-completion
echo set completion-ignore-case on | sudo tee -a /etc/inputrc
```

Command history: z
```bash
brew install fisher
fisher install jethrokuan/z
```

Window manager: yabai
```bash
brew install yabai
```

Hotkeys manager: skhd
```bash
brew install skhd
```

Scripting addition: unlocks more features in yabai (requires partially disabling [System Integrity Protection](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection))
```bash
sudo echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" > /private/etc/sudoers.d/yabai
```

Start at login: launchd
```bash
yabai --start-service
skhd --start-service
```

