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

#swap-esc-caps
echo "setxkbmap -option caps:swapescape" >> ~/.xinitrc

echo "DONE!"
