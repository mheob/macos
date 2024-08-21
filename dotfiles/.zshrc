# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Fig pre block - Keep at the top of this file
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
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Aliases and functions
source "$HOME/.zsh_aliases"

# FZF
source <(fzf --zsh)

# PNPM
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PATH:$PNPM_HOME"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc

export PATH="$NVM_DIR/bin:$PATH"

# Console Ninja
export PATH="$HOME/.console-ninja/.bin:$PATH"

# Broot
source "$HOME/.config/broot/launcher/bash/br"

# FX - JSON Tool
source <(fx --comp bash)

# Curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# .NET
export PATH="/usr/local/share/dotnet:$PATH"

# Golang
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Java
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# Ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.3.0/bin:$PATH"

# Python
export PATH="$HOME/Library/Python/3.11/bin:$PATH"

# Default Exports
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# zoxide
eval "$(zoxide init zsh)"

# Starship
eval "$(starship init zsh)"
#export PROMPT="${PROMPT}"$'\n'

# Fig post block - Keep at the bottom of this file
# bun completions
[ -s "/Users/ab/.bun/_bun" ] && source "/Users/ab/.bun/_bun"

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

