#!/bin/bash

echo 'Installing git-credential-helper...'

if uname -a | grep "microsoft"; then
  ## WSL
  git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-wincred.exe"
  exit 0
else if type "apt" > /dev/null 2>&1; then
  ## Ubuntu
  sudo apt install libsecret-1-0 libsecret-1-dev
  cd /usr/share/doc/git/contrib/credential/libsecret
  sudo make
  git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
  exit 0
else if type "yum" > /dev/null 2>&1; then
  ## RHEL
  git config --global credential.helper /usr/libexec/git-core/git-credential-libsecret
  exit 0
else if type "pacman" > /dev/null 2>&1; then
  ## ArchLinux
  git config --global credential.helper /usr/lib/git-core/git-credential-libsecret
  exit 0
fi

