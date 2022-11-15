#!/bin/bash

"""
# Dotfiles Setup

This script *OVERRIDES* existing dotfiles setup and sets up your terminal
environment.

*WARNING:* The script does not backup your existing config.
"""

# Setup local configs
configs="bashrc bash_profile aliases vimrc virc vim"
for config in $configs; do
	ln -s ./$config ~/.$config
done

# Install vim dependencies
# TBD

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add aliases to .zshrc
echo "[ -f ~/.aliases ] && . ~/.aliases" >> ~/.zshrc