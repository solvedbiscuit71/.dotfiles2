# path configuration
set -gx PATH /opt/homebrew/bin/ $HOME/.dotfiles2/.script/ $PATH
set -gx VISUAL "nvim"

# jump configuration
jump shell fish | source

# aliases
alias v="nvim"
alias g="lazygit"

alias l="exa -1 --no-user -s name -s type"
alias q="exit"

# load add-ons
if test -e $HOME/.config/fish/custom_config.fish
    source $HOME/.config/fish/custom_config.fish
end

# add newline post execution
function postexec_test --on-event fish_postexec
   echo
end
