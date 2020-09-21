#!/bin/bash
DOTPATH=~/dotfiles

echo 'Installing Neovim...'
brew install nvim --HEAD
pip3 install pynvim

echo 'Installing dein...'
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm ./installer.sh

echo 'Installing Neovim config...'
/bin/bash $DOTPATH/bin/link.sh $DOTPATH/.config/nvim/ ~/.config/
