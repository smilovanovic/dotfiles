#!/bin/sh

# Homebrew
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install --cask wezterm

brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
