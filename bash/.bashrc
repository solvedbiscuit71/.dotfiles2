# PATH
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/.dotfiles2/.script:$PATH

if [[ -z "$TMUX" ]]; then
    # load into tmux
    tmux new-session -A -s main
else
    # .env
    export PS1="\[\e[32m\]\u\[\e[m\]@\h \[\e[34m\]\W\[\e[m\] \\$ "
    export VISUAL=nvim

    # bash
    HISTCONTROL=ignorespace
    HISTFILESIZE=
    HISTSIZE=
    HISTTIMEFORMAT="%F %T "
    stty -ixon
    shopt -s autocd

    # alias
    alias v="nvim"
    alias g="lazygit"
    alias n="nnn -CH -e"
    alias l="lsd -1"
    alias q="exit"
    alias c="clear"

    # bash completion
    [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

    # extra
    if [ -f $HOME/.bash_extra ]; then
        source $HOME/.bash_extra
    fi
fi
