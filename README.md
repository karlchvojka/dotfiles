# Dotfile Backup

## Overview

Used for tracking core linux dotfile configs for an Arch Linux + Hyprland setup.

## System Info
- **OS:** Arch Linux
- **Compositor:** Hyprland
- **Shell:** Zsh + Oh My Zsh (agnoster theme)
- **Terminal:** Kitty
- **Status Bar:** Waybar
- **App Launcher:** Rofi
- **Notifications:** Dunst
- **Wallpaper:** awww
- **File Manager:** Dolphin
- **Editor:** VS Code

---

## Project Structure

A diagram of the structure of the project.

```
/
├── .bashrc                          # User specific config for bash (non-login shell)
├── .bash_profile                    # User specific config for bash (login shell)
├── .zsh_custom                      # User specific config for ZSH (aliases, exports)
├── CHANGELOG.md                     # Change tracking
├── README.md                        # This file
├── config/                          # Config files (mirrors ~/.config/)
│   ├── dunst/
│   │   └── dunstrc                  # Notification daemon config
│   ├── hypr/
│   │   └── hyprland.conf            # Hyprland compositor config
│   ├── kitty/
│   │   └── kitty.conf               # Kitty terminal config
│   ├── rofi/
│   │   ├── config.rasi              # Rofi app launcher config
│   │   └── theme.rasi               # Rofi theme (Catppuccin Mocha)
│   ├── uwsm/
│   │   └── env-hyprland.d/
│   │       └── 00-custom.sh         # UWSM environment variables
│   ├── waybar/
│   │   ├── config.jsonc             # Waybar layout and modules
│   │   └── style.css                # Waybar stylesheet
│   └── zsh/
│       ├── .zshenv                  # Zsh environment (loads conf.d/)
│       └── .zshrc                   # Zsh main config (Oh My Zsh, fastfetch)
└── scripts/
└── setup-symlinks.sh            # Creates all symlinks on a fresh install

```

---

## Required Packages
Install these before running the setup script:

```bash
sudo pacman -S hyprland waybar kitty dunst rofi awww \
               papirus-icon-theme ttf-jetbrains-mono-nerd \
               polkit-gnome dolphin fastfetch
```

---

## Getting Started
For setting up dotfiles on a fresh machine.

### 1. Clone repo
```bash
cd ~
git clone git@github.com:karlchvojka/dotfiles.git
```

### 2. Install required packages
```bash
sudo pacman -S hyprland waybar kitty dunst rofi awww \
               papirus-icon-theme ttf-jetbrains-mono-nerd \
               polkit-gnome dolphin fastfetch
```

### 3. Install Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 4. Run the setup script
```bash
chmod +x ~/dotfiles/scripts/setup-symlinks.sh
bash ~/dotfiles/scripts/setup-symlinks.sh
```

### 5. Reload your shell
```bash
source ~/.config/zsh/.zshrc
```

### 6. Reboot
```bash
sudo reboot
```

---

## Development Workflow
- Make changes to files in `~/dotfiles/`
- Changes are reflected immediately via symlinks
- Commit and push to save them:
```bash
cd ~/dotfiles
git add .
git commit -m "Description of changes"
git push
```

---

## Monitors
| Monitor | Resolution | Refresh | Position |
|---|---|---|---|
| HDMI-A-2 (BenQ GL2760) | 1920x1080 | 60Hz | Left |
| DP-1 (ASUS VG27A) | 2560x1440 | 144Hz | Center (main) |
| HDMI-A-1 (BenQ GL2760) | 1920x1080 | 60Hz | Right |

---

## Keybindings
| Shortcut | Action |
|---|---|
| `SUPER+T` | Open terminal (Kitty) |
| `SUPER+R` | Open app launcher (Rofi) |
| `SUPER+E` | Open file manager (Dolphin) |
| `SUPER+C` | Close window |
| `SUPER+F` | Fullscreen |
| `SUPER+V` | Toggle floating |
| `SUPER+M` | Exit Hyprland |
| `SUPER+1-9` | Switch workspace |
| `SUPER+SHIFT+1-9` | Move window to workspace |
| `SUPER+Arrow keys` | Move focus |
| `SUPER+SHIFT+Arrow keys` | Move window |
| `SUPER+CTRL+Arrow keys` | Resize window |
| `Print` | Screenshot monitor |
| `SHIFT+Print` | Screenshot region |
EOF
