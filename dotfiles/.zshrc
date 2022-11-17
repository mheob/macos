# Prefer US English and use UTF-8.
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  # Initialization code that may require console input (password prompts, [y/n]
  # confirmations, etc.) must go above this block; everything else may go below.
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi

  # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

  # Set name of the theme to load.
	ZSH_THEME="powerlevel10k/powerlevel10k"
else
  # Set name of the theme to load.
  # ZSH_THEME="robbyrussell"
  ZSH_THEME="apple"
fi

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
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# PNPM
export PNPM_HOME="/Users/a.boehm/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Golang
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Rust
source "$HOME/.cargo/env"

# Flutter
export PATH="$PATH:$HOME/dev/sdks/flutter/bin"

# Bun
[ -s "/Users/a.boehm/.bun/_bun" ] && source "/Users/a.boehm/.bun/_bun"
export BUN_INSTALL="/Users/a.boehm/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Ruby
eval "$(rbenv init - zsh)"
#export PATH="$HOME/.rbenv/shims:$PATH"

# Default Exports
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/bin:$PATH"

# Run tools
source /Users/a.boehm/Library/Application\ Support/org.dystroy.broot/launcher/bash/br

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# Starship
eval "$(starship init zsh)"
