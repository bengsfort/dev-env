#!/usr/bin/env bash

echo "Running install dependencies script"

echo "Requesting 'sudo' upfront..."
sudo -v

cd ~

# Install yay before anything
echo "Installing yay"
sudo pacman -S --needed git base-devel
mkdir ~/Dependencies
git clone https://aur.archlinux.org/yay.git ~/Dependencies/yay-bin
cd ~/Dependencies/yay-bin/
makepkg -si

## Make sure yay is up to date
echo "Setting yay defaults"
yay -Y --gendb
yay -Syu --devel
yay -Y --devel --save

# Install oh-my-zsh
echo "Installing zsh and oh-my-zsh"
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Node
## Install nvm
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
source "$HOME/.config/nvm/nvm.sh"

## Install latest LTS
echo "Installing latest Node LTS"
nvm install --lts
node -v

## Enable/install pnpm
echo "Installing pnpm"
corepack enable pnpm
pnpm -v

# Zig
echo "Installing zig"
sudo pacman -S zig zls
