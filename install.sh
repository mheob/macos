#!/bin/bash

# Collect constants like $PROJECT_ROOT
source ./utils/constants.sh

# Add binaries to HOME path
ln -s "$PROJECT_ROOT/bin" "$HOME/bin"

# Install apps and binaries with Brew
source ./setup/brew.sh

# Set npm permissions and install global binaries
source ./setup/npm.sh

# Configure MacOS defaults
source ./setup/macos.sh

# Install Oh My ZSH
source ./setup/install-zsh.sh

echo "All Done. Please reboot your device to be sure all changes take effect."
