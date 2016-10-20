# Path to your oh-my-zsh installation.
export ZSH=/home/ivanfoo/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME=ivanfoo

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.dotfiles/zsh

# Plugins to load
plugins=(git docker systemd golang zsh-autosuggestions)
#plugins=()

# Path
export GOPATH="$HOME/workspace/go"
export TFORM="/opt/terraform"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/ivanfoo/.local/bin:/home/ivanfoo/bin:$GOPATH/bin:$TFORM"

# Zsh magic
source $ZSH/oh-my-zsh.sh

# Hidding username and hostname
DEFAULT_USER=`whoami`

# Grownup rm
setopt rm_star_silent

# Git config
export GIT_AUTHOR_EMAIL=sanfru.ivan@gmail.com
export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

# Default editor
export EDITOR=/usr/bin/vim

# Persistent rehash
zstyle ':completion:*' rehash true

# Pretty shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-bright.dark.sh"
if [ -z $BASE16_SHELL ]; then
	source $BASE16_SHELL
fi

 Private stuff
if [ -d "$HOME/.private" ]; then
	for f in $HOME/.private/*/*{rc,.sh}; do
		source $f 2&1 > /dev/null
	done
fi

# added by travis gem
[ -f /home/ivanfoo/.travis/travis.sh ] && source /home/ivanfoo/.travis/travis.sh
