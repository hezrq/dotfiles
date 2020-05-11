#!/bin/bash

export PATH="$HOME/.linuxbrew/bin:$PATH"

fish -c "dot update"
fish -c "dot install git-credential-helper"
fish -c "dot install node"
