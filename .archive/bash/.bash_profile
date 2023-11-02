# PATH
export PATH=$HOME/.dotfiles2/.script:$PATH

if [[ -z "$TMUX" ]]; then
    # load into tmux
	if [[ "$OSTYPE" == "linux-gnu"* ]]; then
		/home/linuxbrew/.linuxbrew/bin/tmux new-session -A -s main
	elif [[ "$OSTYPE" == "darwin"* ]]; then
		/opt/homebrew/bin/tmux new-session -A -s main
	else
		echo "Unknow OS $OSTYPE"
	fi
else
	source $HOME/.bashrc
fi
