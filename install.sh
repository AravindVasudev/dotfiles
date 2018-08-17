#!/bin/bash
###############################################################################
# Dotfiles Installer
# This script backups your old dotfiles and creates symlinks using the ones in
# this repo. Configure the script using the following variables:
dir=~/dotfiles # dotfiles directory
olddir=~/dotfiles_old # old dotfiles
files="bashrc vimrc vim zshrc oh-my-zsh" # dotfiles
###############################################################################\

# create olddir
mkdir -p $olddir

# move old dotfiles to $olddir and replace with symlinks
for file in $files; do
	mv ~/.$file $olddir
	ln -s $dir/$file ~/.$file
done
