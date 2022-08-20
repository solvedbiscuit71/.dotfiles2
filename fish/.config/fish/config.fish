# Add to PATH
set PATH "/opt/homebrew/bin/" "$HOME/.cargo/bin/" $PATH

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

alias vim="nvim"
alias config="cd ~/.dotfiles2 && lp ."

# Bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
