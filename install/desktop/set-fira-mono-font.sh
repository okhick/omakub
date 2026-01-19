#!/bin/bash

# Install and set Fira Mono Nerd Font as default
FONT_NAME="FiraMono Nerd Font"
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraMono.zip"
FILE_NAME="FiraMono"

if ! $(fc-list | grep -i "$FONT_NAME" >/dev/null); then
	cd /tmp
	wget -O "$FILE_NAME.zip" "$FONT_URL"
	unzip "$FILE_NAME.zip" -d "$FILE_NAME"
	mkdir -p ~/.local/share/fonts
	cp "$FILE_NAME"/*.otf ~/.local/share/fonts
	rm -rf "$FILE_NAME.zip" "$FILE_NAME"
	fc-cache -f
	cd -
fi

# Set as GNOME monospace font
gsettings set org.gnome.desktop.interface monospace-font-name "$FONT_NAME 10"
