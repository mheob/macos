# oh-my-zsh Theme
# Default robbyrussell theme with node version info.
# Installation: place this file in .oh-my-zsh/custom/themes/robbyrussell.zsh_theme

function node_prompt_version {
  if command -v nvm >/dev/null 2>&1; then
    node_version=$(nvm current 2>/dev/null)
    [[ $node_version =~ ^v18.* || $node_version == "default" || $node_version == "node" ]] && return
    echo "%{$fg_bold[blue]%}node(%{$fg[red]%}$(node -v)%{$fg[blue]%}) %{$reset_color%}"
  fi
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%~%{$reset_color%} $(node_prompt_version)$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
