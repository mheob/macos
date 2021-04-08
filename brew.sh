#!/bin/bash

# Install Homebrew (if not installed).
echo "Installing Homebrew."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew and upgrade any already-installed formulae.
brew update
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install Homebrew apps.
brew install azure-cli
brew install bat
brew install composer
brew install coreutils
brew install exa
brew tap github/gh && brew install gh
brew install git
brew tap heroku/brew && brew install heroku
brew install htop
brew install micro
brew install nvm
brew install subversion
brew install trash
brew install tree
brew install watch
brew install webp
brew install wget
brew install youtube-dl
brew install zsh

# Install Homebrew cask apps.
brew install --cask adoptopenjdk
brew install --cask alfred
brew install --cask appcleaner
brew install --cask bitwarden
brew install --cask brave-browser
brew install --cask dbeaver-community
brew install --cask deepl
brew install --cask discord
brew install --cask docker
brew install --cask emclient
brew install --cask figma
brew install --cask firefox
brew install --cask firefox-developer-edition
brew tap homebrew/cask-fonts && brew install --cask font-cascadia-code
brew brew install --cask font-fira-code
brew brew install --cask font-jetbrains-mono
brew brew install --cask font-victor-mono
brew install --cask gitify
brew install --cask gitkraken
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask graphql-playground
brew install --cask gyazo
brew install --cask iterm2
brew install --cask loom
brew install --cask menumeters
brew install --cask microsoft-auto-update
brew install --cask microsoft-edge-dev
brew install --cask microsoft-office
brew install --cask microsoft-teams
brew install --cask nordvpn
brew install --cask obs
brew install --cask poedit
brew install --cask postman
brew install --cask rectangle
brew install --cask responsively
brew install --cask signal
brew install --cask slack
brew install --cask spotigy
brew install --cask teamviewer
brew install --cask telegram
brew install --cask twitch
brew install --cask typora
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask whatsapp
brew install --cask zoom

# Remove outdated versions from the cellar.
brew autoremove
brew cleanup -s --prune=7
