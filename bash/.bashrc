# alias
alias vim='nvim'
alias wiki='cd ~/.wiki; nvim ~/.wiki'

# bind
bind 'TAB:menu-complete'

# env
export HISTCONTROL=ignorespace

export PATH='/opt/homebrew/bin':$PATH
export PS1='\e[1;32m\u\e[m@\e[1;32m\h\e[m: \e[1;34m\W\e[m $ '

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
