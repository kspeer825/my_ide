#!/bin/bash


# Install package manager for mac
command -v brew >/dev/null 2>&1 || \
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install a terminal 
brew install --cask iterm2
# Configure terminal
# TODO 

# Install an editor
brew install emacs
# Configure editor
# TODO 

# Install a multiplexer
brew install tmux
# Configure multiplexer
# TODO 

# Install a global key-mapper
brew install --cask karabiner-elements
# Configure key-mapper
# TODO 

# Install Brave
brew install --cask brave-browser
# Configure browser
# TODO 


# Ensure setup was successful
echo "Execute the following in iTerm: setup_health.sh"
open iTerm.app
