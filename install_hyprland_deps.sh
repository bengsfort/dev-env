#!/usr/bin/env bash

echo "Installing hyprland dependencies"

echo "Requesting 'sudo' upfront..."
sudo -v

# Hyprland deps
sudo pacman -S |
	hyprpolkitagent |	# Auth management
	hyprpaper | 		# Wallpaper
	waybar | 		# Status bar
	cliphist		# Clipboard
