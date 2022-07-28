#!/bin/bash

# Collect constants like $PROJECT_ROOT
source ../utils/constants.sh

sudo xcode-select --install

# Install Homebrew (if not installed).
echo "Installing Homebrew."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew and upgrade any already-installed formulae
brew update
brew upgrade
brew cu --all --yes --cleanup

# TODO: Check if needed
# # Save Homebrew’s installed location
# BREW_PREFIX=$(brew --prefix)

# Install packages via Homebrew bundle.
brew bundle --file "./Brewfile"

# TODO: Remove if brew bundle works correctly
# # Tap for commitizen-go
# brew tap lintingzhen/tap

# # Install Homebrew apps.
# brew install \
#   bat \
#   broot \
#   commitizen-go \
#   coreutils \
#   deno \
#   dust \
#   exa \
#   gh \
#   git \
#   gotop \
#   httpie \
#   neovim \
#   nvm \
#   openjdk \
#   pnpm \
#   streamlink \
#   subversion \
#   trash \
#   tree \
#   webp \
#   youtube-dl \
#   zsh

# # Add taps for Homebrew cask apps

# # Tap for fonts
# brew tap homebrew/cask-fonts

# # Install Homebrew cask apps.
# brew install --cask \
#   1password \
#   1password-cli \
#   alfred \
#   alt-tab \
#   appcleaner \
#   bartender \
#   brave-browser \
#   brave-browser-dev \
#   daisydisk \
#   dbeaver-community \
#   deepl \
#   discord \
#   figma \
#   firefox-developer-edition \
#   flux \
#   font-cascadia-code \
#   font-fira-code \
#   font-jetbrains-mono \
#   font-victor-mono \
#   gitify \
#   gitkraken \
#   google-chrome \
#   google-drive \
#   gyazo \
#   insomnia \
#   iterm2 \
#   itsycal \
#   jetbrains-toolbox \
#   loom \
#   menumeters \
#   microsoft-auto-update \
#   microsoft-edge-dev \
#   microsoft-office \
#   microsoft-teams \
#   monitorcontrol \
#   nordvpn \
#   obs \
#   pika \
#   poedit \
#   rectangle \
#   responsively \
#   signal \
#   skype \
#   slack \
#   spotify \
#   teamviewer \
#   telegram \
#   typora \
#   visual-studio-code \
#   vlc \
#   warp \
#   whatsapp \
#   zoom

# Remove outdated versions from the cellar.
brew autoremove
brew cleanup -s --prune=7

# Add .gitignore to the Home directory
echo "Adding .gitignore to the Home directory."

ln -sf "$PROJECT_ROOT/dotfiles/.gitignore" "$HOME/.gitignore"
git config --global core.excludesfile ~/.gitignore
