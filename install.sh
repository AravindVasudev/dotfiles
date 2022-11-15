#!/bin/bash

###############################################################################
# Dotfiles Setup
#
# This script *OVERRIDES* existing dotfiles setup and sets up your terminal
# environment.
###############################################################################

# Setup local configs
cwd=$(pwd)
backup=~/dotfiles_backup
configs="bashrc bash_profile aliases vimrc virc"

mkdir -p $backup
for config in $configs; do
	if [ -L "~/.$config" ] || [ -e "~/.$config" ]; then
		echo "Moving ~/.$config to $backup."
		mv ~/.$config $backup
	fi

    echo "symlink $cwd/$config -> ~/.$config."
	ln -s $cwd/$config ~/.$config
done

# Install vim dependencies
# https://github.com/junegunn/vim-plug/issues/675
echo "Install vim plugins using vimplug."
vim +'PlugInstall --sync' +qa

# Install oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
    echo "Installing oh-my-zsh."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Add aliases to .zshrc
if ! grep -q '. ~/.aliases' ~/.zshrc; then
    echo "Setting up aliases for zshrc."
    echo "# Common Aliases" >> ~/.zshrc
    echo "[ -e ~/.aliases ] && . ~/.aliases" >> ~/.zshrc
fi