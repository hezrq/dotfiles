#!/usr/bin/env fish

builtin cd $DOTPATH
g pull
bash $DOTPATH/homebrew/install.sh
bash $DOTPATH/fish/install.sh
