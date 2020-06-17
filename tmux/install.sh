#!/bin/bash

DOTPATH=~/dotfiles

echo 'Installing tmux configs...'
if [ -f ~/.tmux.conf ]; then
  rm ~/.tmux.conf
fi
ln -s $DOTPATH/configs/tmux/.tmux.conf ~/.tmux.conf
