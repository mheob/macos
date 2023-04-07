# Prefer US English and use UTF-8.
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
# # ZSH_THEME="robbyrussell"
ZSH_THEME="apple"

# Disable automatic updates
zstyle ':omz:update' mode disabled

# Turn off the "Upgrading custom plugins" message of the autoupdate plugin
ZSH_CUSTOM_AUTOUPDATE_QUIET=true

# Plugins
# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  alias-tips
  autoupdate
  bgnotify
  colored-man-pages
  composer
  docker
  docker-compose
  git
  github
  history-substring-search
  macos
  node
  nvm
  vscode
  yarn
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Aliases and functions
source "$HOME/.zsh_aliases"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Golang
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Java
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# Default Exports
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/bin:$PATH"

# Run tools
source "$HOME/.config/broot/launcher/bash/br"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# Starship
eval "$(starship init zsh)"

