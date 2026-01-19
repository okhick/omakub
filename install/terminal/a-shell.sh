#!/bin/bash

# Install zsh
sudo apt install -y zsh

# Install Oh My Zsh (unattended)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Set zsh as default shell
sudo chsh -s $(which zsh) $USER

# Configure .zshrc with Oh My Zsh defaults
cat > ~/.zshrc <<'EOF'
# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git fzf zoxide)

source $ZSH/oh-my-zsh.sh

# Load Omakub shell configurations
source ~/.local/share/omakub/defaults/shell/shell
source ~/.local/share/omakub/defaults/shell/aliases
source ~/.local/share/omakub/defaults/shell/functions

# Initialize tools
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
EOF
