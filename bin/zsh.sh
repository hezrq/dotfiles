#!/bin/bash

DOTPATH=~/dotfiles

export PATH="$HOME/.linuxbrew/bin:$PATH"

echo 'Installing zinit...'

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

echo 'Install zsh config...'
$DOTPATH/bin/link.sh $DOTPATH/.config/zsh/.zshenv ~/.zshenv

zsh -c "zinit self-update"
echo 'You must be run `fast-theme -t clean`'

