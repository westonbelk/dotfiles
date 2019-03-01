#!/bin/bash

# Install packages
sudo dnf install -y $(grep "^[^#]" dnf-packages.txt)

# Git PS1 support
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o $HOME/.local/share/git-prompt.sh


