# add to PATH
export PATH='/opt/homebrew/bin':$PATH

# alias
alias vim='nvim'
alias wiki='cd ~/.wiki; nvim ~/.wiki'

# keybind
bind 'TAB:menu-complete'

# prompt
export PS1='\e[1;32m\u\e[m@\e[1;32m\h\e[m: \e[1;34m\W\e[m $ '

# print system info
neofetch
