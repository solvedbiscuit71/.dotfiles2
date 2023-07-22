set PATH "/opt/homebrew/bin/" "$HOME/.dotfiles2/.script/" $PATH

alias vi="nvim"
alias re="ranger"
alias lg="lazygit"

alias ls="exa -l -s type --no-user --git"
alias q="exit"

# ghcup configuration
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $HOME/.ghcup/bin $PATH

# opam configuration
source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
eval $(opam env)
