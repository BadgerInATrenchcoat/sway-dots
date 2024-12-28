#!/usr/bin/env sh

# Default command for file finding
#export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude "/.snapshots"'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude ".snapshots" --exclude "/proc" --exclude ".steam" --exclude ".local/share/Steam"'

# Default options including colors and styling
export FZF_DEFAULT_OPTS="
  --color=spinner:#88C0D0,hl:#81A1C1,fg:#D8DEE9,header:#88C0D0,info:#8FBCBB,pointer:#88C0D0,marker:#88C0D0,fg+:#ECEFF4,bg+:#3B4252,prompt:#81A1C1,hl+:#A3BE8C,border:#4C566A,gutter:-1,query:#D8DEE9,disabled:#4C566A,preview-fg:#E5E9F0,preview-border:#4C566A
  --height 40%
  --border rounded
  --layout=reverse
  --prompt='❯ '
  --pointer='❯'
  --marker='❯'
  --preview 'bat --style=numbers --color=always {}'
  --preview-window=right:hidden
  --bind 'ctrl-l:toggle-preview'
  --bind 'ctrl-u:preview-half-page-down'
  --bind 'ctrl-d:preview-half-page-up'
  --bind 'ctrl-y:execute-silent(echo {} | wl-copy)'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
  --bind '?:toggle-preview-wrap'
  --header 'CTRL-L: Toggle preview | CTRL-D/U: Scroll preview | ?: Toggle wrap'
"
