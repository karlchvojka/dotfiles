#!/usr/bin/env bash
# -----------------------------------------------------
# DOTFILES SYMLINK SETUP SCRIPT
# Run this on a fresh install to link all dotfiles
# Usage: bash ~/dotfiles/scripts/setup-symlinks.sh
# -----------------------------------------------------

DOTFILES="$HOME/dotfiles"
CONFIG="$HOME/.config"

echo "Setting up dotfiles symlinks..."

# -----------------------------------------------------
# Create config directories if they don't exist
# -----------------------------------------------------
mkdir -p "$CONFIG/hypr"
mkdir -p "$CONFIG/waybar"
mkdir -p "$CONFIG/kitty"
mkdir -p "$CONFIG/dunst"
mkdir -p "$CONFIG/rofi"
mkdir -p "$CONFIG/zsh"
mkdir -p "$CONFIG/uwsm/env-hyprland.d"

# -----------------------------------------------------
# Helper function
# Creates symlink, backing up existing file if present
# -----------------------------------------------------
link() {
    local src="$1"
    local dst="$2"

    if [ -L "$dst" ]; then
        echo "  Removing existing symlink: $dst"
        rm "$dst"
    elif [ -f "$dst" ]; then
        echo "  Backing up existing file: $dst -> $dst.bak"
        mv "$dst" "$dst.bak"
    fi

    ln -s "$src" "$dst"
    echo "  Linked: $dst -> $src"
}

# -----------------------------------------------------
# Home directory files
# -----------------------------------------------------
echo ""
echo "Linking home directory files..."
link "$DOTFILES/.zsh_custom"    "$HOME/.zsh_custom"
link "$DOTFILES/.bashrc"        "$HOME/.bashrc"
link "$DOTFILES/.bash_profile"  "$HOME/.bash_profile"

# -----------------------------------------------------
# Hyprland
# -----------------------------------------------------
echo ""
echo "Linking Hyprland config..."
link "$DOTFILES/config/hypr/hyprland.conf"  "$CONFIG/hypr/hyprland.conf"

# -----------------------------------------------------
# Waybar
# -----------------------------------------------------
echo ""
echo "Linking Waybar config..."
link "$DOTFILES/config/waybar/config.jsonc" "$CONFIG/waybar/config.jsonc"
link "$DOTFILES/config/waybar/style.css"    "$CONFIG/waybar/style.css"

# -----------------------------------------------------
# Kitty
# -----------------------------------------------------
echo ""
echo "Linking Kitty config..."
link "$DOTFILES/config/kitty/kitty.conf"    "$CONFIG/kitty/kitty.conf"

# -----------------------------------------------------
# Dunst
# -----------------------------------------------------
echo ""
echo "Linking Dunst config..."
link "$DOTFILES/config/dunst/dunstrc"       "$CONFIG/dunst/dunstrc"

# -----------------------------------------------------
# Rofi
# -----------------------------------------------------
echo ""
echo "Linking Rofi config..."
link "$DOTFILES/config/rofi/config.rasi"    "$CONFIG/rofi/config.rasi"
link "$DOTFILES/config/rofi/theme.rasi"     "$CONFIG/rofi/theme.rasi"

# -----------------------------------------------------
# Zsh
# -----------------------------------------------------
echo ""
echo "Linking Zsh config..."
link "$DOTFILES/config/zsh/.zshrc"          "$CONFIG/zsh/.zshrc"
link "$DOTFILES/config/zsh/.zshenv"         "$CONFIG/zsh/.zshenv"

# -----------------------------------------------------
# UWSM
# -----------------------------------------------------
echo ""
echo "Linking UWSM config..."
link "$DOTFILES/config/uwsm/env-hyprland.d/00-custom.sh" "$CONFIG/uwsm/env-hyprland.d/00-custom.sh"

echo ""
echo "All symlinks created successfully!"
