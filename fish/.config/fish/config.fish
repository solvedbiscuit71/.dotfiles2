# Add to PATH
set PATH $PATH /opt/homebrew/bin $HOME/.cargo/bin

# Alias
alias l="exa -al -s=type --no-user"
alias lg="lazygit"
alias q="exit 0"

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gl="git log --oneline --graph"
alias gd="git diff"
alias gp="git push"
alias gu="git restore"

alias bd="cd ~/.dotfiles2"
alias bc="cd ~/Code"

# Bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
