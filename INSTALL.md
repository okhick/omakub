# Installation

This is a customized Omakub setup with minimal apps and configurations.

## One-Line Install

Run this command on a **fresh Ubuntu 24.04+** installation:

```bash
wget -qO- https://raw.githubusercontent.com/okhick/omakub/claude/reconfigure-ubuntu-apps-I4Fe7/boot.sh | bash
```

## What Gets Installed

### Your Custom Apps (prompts during install)
- 1Password (password manager)
- Zen (Firefox-based browser)
- Zed (code editor)
- Ghostty (terminal emulator)
- Node.js (via Mise)

### Desktop Apps (auto-installed)
- Flatpak
- Flameshot (screenshots)
- Obsidian (notes)
- Pinta (image editor)
- VLC (media player)
- LocalSend (file sharing)
- Ulauncher (app launcher)
- GNOME utilities (Sushi, Tweak Tool, wl-clipboard)

### Terminal Tools
- zsh + Oh My Zsh (robbyrussell theme)
- GitHub CLI
- Claude Code CLI
- fzf, ripgrep, bat, eza, zoxide, fd-find
- Mise (Node.js version manager)
- Build tools (build-essential, pkg-config, etc.)

### GNOME Desktop
- Gruvbox theme (sage colors, dark mode)
- Fira Mono Nerd Font
- Extensions, hotkeys, dock customization

## What's Different from Stock Omakub

**Removed:**
- omakub CLI menu system
- Theme/font switchers
- Update mechanism
- All games (Minecraft, Steam, Retroarch)
- Docker & databases
- Most programming languages (kept only Node.js)
- Terminal apps (Neovim, LazyDocker, LazyGit, Zellij, btop, fastfetch)
- Many desktop apps (Chrome, VSCode, Alacritty, Spotify, Discord, Zoom, LibreOffice, Signal, etc.)

**Changed:**
- Switched from bash to zsh with Oh My Zsh
- Fixed Gruvbox theme (removed other themes)
- Fixed Fira Mono font (removed other fonts)
- Streamlined to only apps you actually want

This is a **one-time installation** - no post-install menus or update checks.
