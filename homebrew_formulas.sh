#!/usr/bin/env bash

# Ensure latest
brew update
brew upgrade

# Install utilities
brew install coreutils
brew install findutils
brew install wget
brew install grep
brew install tree
brew install imagemagick
brew install ffmpeg
brew install glob

# Install font tools
brew trust bramstein/webfonttools
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install languages
brew install lua
brew install cmake
brew install zig
brew install zls
brew install protobuf
brew install cargo-binstall # for rust

# Kickstart requirements
brew install ripgrep

# Install editors
brew install neovim

# Final cleanup

brew cleanup
