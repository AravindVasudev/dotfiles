#!/bin/bash

###############################################################################
# Dotfiles Setup
#
# This script *OVERRIDES* existing dotfiles setup and sets up your terminal
# environment.
###############################################################################

# Setup local configs
cwd=$(pwd)
backup="~/dotfiles_backup"
configs="bashrc bash_profile aliases vimrc virc"

mkdir $backup
for config in $configs; do
	if [ -e "~/.$config" ]; then
		echo "Moving ~/.$config to $backup."
		mv ~/.$config $backup
	fi

	ln -s $cwd/$config ~/.$config
done

# Install vim dependencies
# https://github.com/junegunn/vim-plug/issues/675
vim +'PlugInstall --sync' +qa

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add aliases to .zshrc
echo "# Common Aliases" >> ~/.zshrc
echo "[ -e ~/.aliases ] && . ~/.aliases" >> ~/.zshrc