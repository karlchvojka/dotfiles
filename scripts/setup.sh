#!/bin/bash

# Setup script for dotfiles

echo "Setting up dotfiles..."

# Create Symlinks

echo "Setting up Symlinks..."

# Bashrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
echo "Linked .bashrc"

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
echo "Linked .bash_profile"

echo "Setup Complete!"
echo "RUN 'source ~/.bashrc' to reload the shell configuration"
