#!/usr/bin/env bash

# Prerequisites
#   Xcode Command Line Tools

# Homebrew
echo "Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew doctor

# Curl
echo "Installing curl..."
brew install curl
brew install wget

# Python
echo "Installing Python environment..."
brew install python
brew install pip
pip install --user pipenv
pip install virtualenv
pip install virtualenvwrapper
brew install direnv

# git
echo "Installing git..."
brew install git

# zsh & oh-my-zsh
echo "Installing zsh & oh-my-zsh..."
brew install zsh
brew install zsh-completions
chsh -s /opt/homebrew/bin/zsh
ruby -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

# dotfiles
echo "Installing dotfiles..."
git clone git@github.com:mep-um/dotfiles.git

# rcm
brew install rcm
env RCRC=$HOME/dotfiles/rcrc rcup
rcup -v