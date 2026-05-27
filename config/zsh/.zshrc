# -----------------------------------------------------
# ZSH CONFIG
# -----------------------------------------------------

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git sudo)
source $ZSH/oh-my-zsh.sh

# Fastfetch on startup
if [[ $- == *i* ]] && command -v fastfetch >/dev/null; then
    fastfetch
fi

# Editor
export EDITOR=code

# NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Source custom config (aliases, exports, etc.)
[ -f ~/.zsh_custom ] && source ~/.zsh_custom
