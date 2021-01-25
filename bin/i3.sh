#!/bin/bash
DOTPATH=~/dotfiles

sudo /bin/bash $DOTPATH/bin/link.sh $DOTPATH/.config/i3/ ~/.config/
if [ ! -d $HOME/.config/sway ]; then
  mkdir $HOME/.config/sway
fi
sudo /bin/bash $DOTPATH/bin/link.sh $DOTPATH/.config/i3/* ~/.config/sway/
