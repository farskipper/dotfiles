#!/bin/bash

#bashrc
echo "###########################################" >> ~/.bashrc
echo "# customizations" >> ~/.bashrc
echo "source ~/dotfiles/bashrc" >> ~/.bashrc

#tmux
echo "source-file ~/dotfiles/tmux.conf" > ~/.tmux.conf

#vim
ln -sf ~/dotfiles/vim/ ~/.vim
echo "source ~/.vim/vimrc \"shim to get to the version controlled vimrc" > ~/.vimrc

#git
git config --global alias.st status

#xmonad
ln -sf ~/dotfiles/xmonad/ ~/.xmonad

# most of the time I don't want the package-lock.json
echo "package-lock=false" >> ~/.npmrc

echo "DONE!"
