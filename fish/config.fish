# path configuration
set -gx PATH /opt/homebrew/sbin /opt/homebrew/bin $HOME/.dotfiles2/.script $PATH
set -gx VISUAL "nvim"

# aliases
alias v="nvim"
alias g="lazygit"

alias l="exa -1 --no-user -s name -s type"
alias q="exit"

# load add-ons
if test -e $HOME/.fish_extra
    source $HOME/.fish_extra
end

# add newline post execution
function postexec_test --on-event fish_postexec
   echo
end
