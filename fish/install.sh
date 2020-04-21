#!/bin/bash

export PATH="$HOME/.linuxbrew/bin:$PATH"

brew install fish

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

/usr/local/bin/fish fisher add rafaelrinaldi/pure

rm ~/.config/fish/config.fish
mv config.fish ~/.config/fish/config.fish

sudo chsh -s /usr/local/bin/fish
