# Add to PATH
set PATH "/opt/homebrew/bin/" "$HOME/.cargo/bin/" $PATH

# Alias to external commands
alias l="exa -al -s=type --no-user"
alias lg="lazygit"
alias vim="nvim"

# Alias to builtin command
alias q="exit 0"

# Bookmark alias
alias bd="cd ~/.dotfiles2"
alias bc="cd ~/code"
alias bw="cd ~/.wiki && nvim README.md"

# Bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
