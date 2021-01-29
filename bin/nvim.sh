#!/bin/bash
DOTPATH=~/dotfiles

echo 'Installing pynvim...'
pip3 install pynvim

echo 'Installing dein...'
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm ./installer.sh
