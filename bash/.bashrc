# .env
export PS1="\[\e[32m\]\u\[\e[m\]@\h \[\e[34m\]\W\[\e[m\] \\$ "
export HISTCONTROL=ignorespace
export VISUAL=nvim
bind "TAB:menu-complete"

# PATH
export PATH=/opt/homebrew/bin:$HOME/.dotfiles2/.script:$PATH

export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/.dotfiles2/.script:$PATH

# alias
alias v="nvim"
alias g="lazygit"
alias n="nnn -CH -e"
alias l="exa -1 --no-user -s name -s type"
alias q="exit"

# extra
if [ -f $HOME/.bash_extra ]; then
    source $HOME/.bash_extra
fi
