# Git Repo Template

## Overview

Used for tracking core linux dotflie configs

---

## Project Structure

A diagram of the structure of the project.

```
/
├── .bashrc          # User specific config. Used when starting a non-login shell
├── .bash_profile    # User specific config. Used when starting a login shell
├── CHANGELOG.md     # Change tracking
├── README.md        # This file
└── scripts/         # Folder of scripts
    └── setup.sh     # Sets up Symlinks and etc.
```

---

## Getting Started

For usage when setting up dotfiles in a new machine (Fresh machine or otherwise)

NOTE: Start in home folder (~/.)

### Clone repo

```bash
git clone (Add repo url here)
```

### Run the setup script

```bash
# Move into dotfiles scripts folder
cd ~/dotfiles/scripts/

# Give the setup script executable permissions
# NOTE: ONLY NEEDS TO BE RAN THE FIRST TIME
chmod +x setup.sh

# Run setup script
./setup.sh

# Reload the shell config
source ~/.bashrc 
```

---

## Development Workflow

- Make changes to files
- Commit chamges via git
- Push to Git repo

---
