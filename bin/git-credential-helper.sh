#!/bin/bash

echo 'Installing git-credential-helper...'

## ArchLinux
git config --global credential.helper /usr/lib/git-core/git-credential-libsecret

