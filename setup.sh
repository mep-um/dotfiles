#!/usr/bin/env bash

# Prerequisites
#   iTerm2
#   Xcode Command Line Tools
#   Clone to ~/.dotfiles
#   Hide dotfiles directory

# Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew upgrade
brew doctor

# Iterm2
brew cask install iterm2

# Curl
echo "Installing curl..."
brew install curl
brew install wget

# Python
echo "Installing Python environment..."
brew install python
brew install pip

# Development tools
brew install sqlite

# git
echo "Installing git..."
brew install git

# zsh & oh-my-zsh
echo "Installing zsh & oh-my-zsh..."
brew install zsh
brew install zsh-autocomplete
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
chsh -s /opt/homebrew/bin/zsh
brew install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
# Manual Action: Set iterm2 color profile to "Solarized Dark"

# dotfiles
#echo "Installing dotfiles..."
#git clone git@github.com:mep-um/dotfiles.git

# rcm
brew install rcm
env RCRC=$HOME/dotfiles/rcrc rcup
rcup -v

# Restart iTerm2