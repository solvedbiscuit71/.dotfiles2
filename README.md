# .dotfiles2

The successor of `solvedbiscuit71/.dotfiles` with focus on simplicity and ease of use.
check out: https://github.com/solvedbiscuit71/.dotfiles

# prerequisite

Xcode need to be install in-case of macos.
```sh
xcode-select --install
```

and, then install HomeBrew
```sh
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**NOTE**: If the brew is not avaiable in the path substitute `brew` with `/opt/homebrew/bin/brew`

# installation

Here, we are using **fish.sh** as our shell instead of **zsh** and also we are using alacritty

```sh
brew install fish
brew install --cask alacritty
```

To make, fish.sh as your default shell
```sh
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```

# nerdfont

Here, we have many variant of nerdfont
check out: https://www.nerdfonts.com/font-downloads

```sh
brew tap homebrew/cask-fonts
brew install --cask font-victor-mono-nerd-font
```

Others: replace `victor-mono` with your font name in kebab-case

# clone

```sh
git clone https://github.com/solvedbiscuit71/.dotfiles2.git ~/.dotfiles2
```

After cloning, run `stow <folder-name>` to install && `stow -D <folder-name>` to remove settings.
