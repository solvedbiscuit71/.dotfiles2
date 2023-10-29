# PATH
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/.dotfiles2/.script:$PATH

if [[ -z "$TMUX" ]]; then
    # load into tmux
    tmux new-session -A -s main
else
	source $HOME/.bashrc
fi
