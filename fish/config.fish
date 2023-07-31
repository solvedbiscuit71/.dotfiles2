# path configuration
set PATH "/opt/homebrew/bin/" "$HOME/.dotfiles2/.script/" $PATH
set -gx VISUAL "nvim"

# jump configuration
jump shell fish | source

# ghcup configuration
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $HOME/.ghcup/bin $PATH

# opam configuration
source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
eval $(opam env)

# aliases
alias v="nvim"
alias g="lazygit"

alias l="exa -1 --no-user -s name -s type"
alias q="exit"
