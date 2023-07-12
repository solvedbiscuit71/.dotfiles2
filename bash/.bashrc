# alias
alias vim="nvim"
alias ls="exa -l -s type --no-user --git"
alias lg="lazygit"

# bind
bind "TAB:menu-complete"

# env
export HISTCONTROL=ignorespace

export PATH="/opt/homebrew/bin":"$HOME/.dotfiles2/bin":$PATH
export PS1="\e[1;32m\u\e[m@\e[1;32m\h\e[m: \e[1;34m\W\e[m $ "

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# bash_completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
. "$HOME/.cargo/env"
