#!/bin/bash

# Collect constants like $PROJECT_ROOT
source ../utils/constants.sh

ln -sf "$PROJECT_ROOT/dotfiles/.p10k.zsh" "$HOME/.p10k.zsh"
ln -sf "$PROJECT_ROOT/dotfiles/.zsh_aliases" "$HOME/.zsh_aliases"
ln -sf "$PROJECT_ROOT/dotfiles/.zshrc" "$HOME/.zshrc"

# Installs .oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Default ZSH installation
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Install plugins
git clone --depth=1 "https://github.com/TamCore/autoupdate-oh-my-zsh-plugins" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autoupdate"
git clone --depth=1 "https://github.com/zsh-users/zsh-autosuggestions" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
git clone --depth=1 "https://github.com/zsh-users/zsh-history-substring-search" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search"
git clone --depth=1 "https://github.com/zsh-users/zsh-syntax-highlighting.git" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

# Install themes
git clone --depth=1 "https://github.com/romkatv/powerlevel10k.git" "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
cp "$PROJECT_ROOT/omz/robbyrussell.zsh-theme" "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/robbyrussell.zsh-theme"

# Change Shell to ZSH
chsh -s usr/local/bin/zsh
