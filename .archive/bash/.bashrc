# NOTE: this .bashrc is been achieved

alias vim="nvim"
alias ls="exa -l -s type --no-user --git"
alias lg="lazygit"

bind "TAB:menu-complete"

export HISTCONTROL=ignorespace
export PATH="/opt/homebrew/bin":"$HOME/.dotfiles2/bin":$PATH
export PS1="\e[1;32m\u\e[m@\e[1;32m\h\e[m: \e[1;34m\W\e[m $ "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
