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
brew install --cask iterm2

# Curl
echo "Installing curl..."
brew install curl
brew install wget

# Python
echo "Installing Python environment..."
brew install python
brew install uv

# Node
echo "Installing Node environment..."
brew install node

# Development tools
echo "Installing development tools..."
brew install sqlite

# git
echo "Installing git..."
brew install git

# zsh & oh-my-zsh
echo "Installing terminal environment..."
brew install zsh
chsh -s /opt/homebrew/bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# powerlevel10k
# Powerlevel10k is installed via git clone for Oh My Zsh (see line 45)
# Set ZSH_THEME for Oh My Zsh to use Powerlevel10k
echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Set theme
sed -i'.bak' 's|^ZSH_THEME=.*|ZSH_THEME="powerlevel10k/powerlevel10k"|' ~/.zshrc
# Install fonts
brew install alfred
brew install font-hack-nerd-font
# Manual Action: Set iterm2 color profile to "Solarized Dark"

# zsh plugins
brew install zsh-autocomplete
echo "source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh" >> ~/.zshrc
brew install zsh-autosuggestions
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
brew install zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# rcm
brew install rcm
env RCRC=$HOME/dotfiles/rcrc rcup
rcup -v -x License -x readme.md -x setup.sh


source ~/.zshrc

# set iterm theme
echo "MANUAL STEPS:"
echo "1. iTerm: Set Solarized Dark color theme for default profile."
