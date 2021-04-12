#!/bin/bash

sudo xcode-select --install

# Install Homebrew (if not installed).
echo "Installing Homebrew."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew and upgrade any already-installed formulae.
brew update
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install Homebrew apps.
brew tap github/gh

brew install \
  autojump \
  azure-cli \
  bat \
  composer \
  coreutils \
  exa \
  gh \
  git \
  heroku/brew/heroku \
  htop \
  micro \
  nvm \
  openjdk \
  subversion \
  trash \
  tree \
  vim \
  watch \
  webp \
  wget \
  youtube-dl \
  zsh

# Install Homebrew cask apps.
brew tap homebrew/cask-fonts

brew install --cask \
  alfred \
  appcleaner \
  bitwarden \
  brave-browser \
  dbeaver-community \
  deepl \
  discord \
  emclient \
  figma \
  firefox \
  firefox-developer-edition \
  font-cascadia-code \
  font-fira-code \
  font-jetbrains-mono \
  font-victor-mono \
  gitify \
  gitkraken \
  google-chrome \
  google-drive \
  graphql-playground \
  gyazo \
  iterm2 \
  loom \
  menumeters \
  microsoft-auto-update \
  homebrew/cask-versions/microsoft-edge-dev \
  microsoft-office \
  microsoft-teams \
  nordvpn \
  obs \
  poedit \
  postman \
  rectangle \
  responsively \
  signal \
  slack \
  spotify \
  teamviewer \
  telegram \
  twitch \
  typora \
  visual-studio-code \
  vlc \
  whatsapp \
  zoom

# Remove outdated versions from the cellar.
brew autoremove
brew cleanup -s --prune=7

# Add .gitignore to the Home directory
cp "./.gitignore" "$HOME/.gitignore"
git config --global core.excludesfile ~/.gitignore
