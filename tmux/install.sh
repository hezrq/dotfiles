#!/bin/bash

DOTPATH=~/dotfiles

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

echo 'Installing tmux'
brew install tmux

echo 'Installing tmux configs...'
if [ -f ~/.tmux.conf ]; then
  rm ~/.tmux.conf
fi
ln -s $DOTPATH/configs/tmux/.tmux.conf ~/.tmux.conf
