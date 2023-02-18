# alias
alias vim='nvim'
alias wiki='cd ~/.wiki && vim'

alias ls='exa -l -s type --no-user --git'

# bind
bind 'TAB:menu-complete'

# env
export HISTCONTROL=ignorespace

export PATH='/opt/homebrew/bin':$PATH
export PS1='\e[1;32m\u\e[m@\e[1;32m\h\e[m: \e[1;34m\W\e[m $ '

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# bash_completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

