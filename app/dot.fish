#!/usr/bin/env fish

set all_argv (count $argv)

switch $argv[1]
case 'update'
  $DOTPATH/app/update.fish
case 'install'
  $DOTPATH/app/install.fish $argv[2..$all_argv]
end
