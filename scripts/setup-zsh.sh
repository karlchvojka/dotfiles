#!/bin/bash
# Setup script for zsh dotfiles

echo "Setting up zsh dotfiles..."

# Create zsh custom config symlink
ln -sf ~/dotfiles/.zsh_custom ~/.zsh_custom
echo "Linked .zsh_custom"

echo ""
echo "Setup complete!"
echo "Make sure your ~/.config/zsh/.zshrc contains at the bottom:"
echo "  if [ -f ~/.zsh_custom ]; then"
echo "    source ~/.zsh_custom"
echo "  fi"
echo ""
echo "Then run 'source ~/.config/zsh/.zshrc' to reload your zsh configuration"
