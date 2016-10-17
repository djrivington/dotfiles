# Path to your oh-my-zsh installation.
export ZSH=/home/marcel/.dotfiles/oh-my-zsh

ZSH_THEME="spaceship"

plugins=(git)

for file in $ZSH/{oh-my-zsh,exports,aliases,functions}.sh; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

DEFAULT_USER="marcel"

if [[ ! $TERM =~ screen ]]; then
  tmux -u new-session
fi

