set PATH "/opt/homebrew/bin/" "$HOME/.dotfiles2/bin/" $PATH

alias vi="nvim"
alias re="ranger"
alias lg="lazygit"

alias ls="exa -l -s type --no-user --git"
alias q="exit"

# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $HOME/.ghcup/bin $PATH
