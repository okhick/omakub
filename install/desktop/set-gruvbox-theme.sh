#!/bin/bash

# Apply Gruvbox theme to GNOME desktop
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'
gsettings set org.gnome.desktop.interface gtk-theme "Yaru-sage-dark"
gsettings set org.gnome.desktop.interface icon-theme "Yaru-sage"
gsettings set org.gnome.desktop.interface accent-color "sage" 2>/dev/null || true

# Set Gruvbox background wallpaper
BACKGROUND_SRC="$HOME/.local/share/omakub/themes/gruvbox/background.jpg"
BACKGROUND_DEST_DIR="$HOME/.local/share/backgrounds"
BACKGROUND_DEST="$BACKGROUND_DEST_DIR/gruvbox-background.jpg"

mkdir -p "$BACKGROUND_DEST_DIR"
cp "$BACKGROUND_SRC" "$BACKGROUND_DEST"

gsettings set org.gnome.desktop.background picture-uri "$BACKGROUND_DEST"
gsettings set org.gnome.desktop.background picture-uri-dark "$BACKGROUND_DEST"
gsettings set org.gnome.desktop.background picture-options 'zoom'

# Set TopHat extension color (if installed)
gsettings set org.gnome.shell.extensions.tophat meter-fg-color "#78ab50"
