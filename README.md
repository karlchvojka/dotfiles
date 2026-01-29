# Git Repo Template

## Overview

Used for tracking core linux dotflie configs

---

## Project Structure

A diagram of the structure of the project.

```
/
├── .bashrc              # User specific config for bash. Used when starting a non-login shell
├── .bash_profile        # User specific config for bash. Used when starting a login shell
├── CHANGELOG.md         # Change tracking
├── README.md            # This file
├── scripts/             # Folder of scripts
│   └── setup-bash.sh    # Sets up Symlinks and etc for bash shells
│   └── setup-zsh.sh     # Sets up Symlinks and etc for zsh shells
└── .zsh_custom          # User specific config for ZSH shells

```

---

## Getting Started

For usage when setting up dotfiles in a new machine (Fresh machine or otherwise)

NOTE: Start in home folder (~/.)

### Clone repo

```bash
git clone git@github.com:karlchvojka/dotfiles.git
```

### Run the setup script

```bash
# Move into dotfiles scripts folder
cd ~/dotfiles/scripts/

# Give the setup script executable permissions
# NOTE: ONLY NEEDS TO BE RAN THE FIRST TIME
chmod +x setup-[name].sh

# Run setup script
./setup-[name].sh

# Reload the shell config

# bash reload
source ~/.bashrc

# zsh reload
source ~/.config/zsh/.zshrc
```

---

## Development Workflow

- Make changes to files
- Commit chamges via git
- Push to Git repo

---
