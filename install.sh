#! /bin/bash

# zsh config
echo "Configuring zsh..."
mv ~/.zshrc ~/.zshrc.old 2> /dev/null
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
echo "Done!"

# pathogen
echo "Installing pathogen..."
curl -LSso ~/.dotfiles/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "Done!"

# vim plugins
echo "Installing plugins..."
git submodule init
git submodule update
echo "Done!"

# vim links
echo "Configuring vim..."
mv ~/.vimrc ~/.vimrc.old 2> /dev/null
mv ~/.vim ~/.vim.old 2> /dev/null
ln -s ~/.dotfiles/vim/ ~/.vim
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
echo "Done!"

# tmux
echo "Configuring tmux..."
mv ~/.tmux.conf ~/.tmux.conf.old 2> /dev/null 
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
echo "Done!"

# xmodmap
echo "Configuring xmodmap..."
mv ~/.Xmodmap ~/.Xmodmap.old 2> /dev/null 
ln -s ~/.dotfiles/xmodmap/.xmodmap ~/.xmodmap
echo "Done!"
