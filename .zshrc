# ===========================
# Color Configuration
# ===========================
# Enable color support for the shell.

autoload -U colors && colors


# ===========================
# History Configuration
# ===========================
# Configure shell history settings.

# Set the maximum number of history entries.
HISTSIZE=1000000

# Set the number of history entries to save.
SAVEHIST=100000

# Specify the file to save history.
HISTFILE=~/.cache/zsh/history

# Ignore commands prefixed with a space.
setopt HIST_IGNORE_SPACE


# ===========================
# Completion System
# ===========================
# Configure and initialize the completion system.

autoload -U compinit
compinit

# Enable menu selection for completion.
zstyle ':completion:*' menu select

# Load the completion list module.
zmodload zsh/complist

# Include hidden files in glob completion.
_comp_options+=(globdots)


# ===========================
# Key Bindings
# ===========================
# Configure custom key bindings.

# Move forward by a word.
bindkey '^[[1;5C' forward-word

# Move backward by a word.
bindkey '^[[1;5D' backward-word

# Search history upwards using substring search.
bindkey '^[[A' history-substring-search-up

# Search history downwards using substring search.
bindkey '^[[B' history-substring-search-down


# ===========================
# Plugins
# ===========================
# Load additional plugins for enhanced functionality.

# Load the autosuggestions plugin.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load the syntax highlighting plugin.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load the history substring search plugin.
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Load fzf integration if fzf is installed.
if command -v fzf >/dev/null 2>&1; then
  source <(fzf --zsh)
fi


# ===========================
# Aliases
# ===========================
# Define custom aliases for common commands.

# Colorize the output of common commands.
alias diff="diff --color=auto"
alias ls="ls --color"
alias grep="grep --color=auto"
alias ip="ip -color=auto"

# Aliases for file and directory operations.
alias cat="bat --tabs 2"
alias ll="ls -al"
alias mv="mv -i"
alias cp="cp -i"

# Aliases for specific applications and utilities.
alias zrl="source $HOME/.zshrc && source $HOME/.zshenv"
alias emacsclient="emacsclient -c -n -a ''"
alias bootwin="sudo efibootmgr --bootnext 0001 && reboot"
alias calcurse-caldav='CALCURSE_CALDAV_PASSWORD=$(pass show calcurse-cd) calcurse-caldav'
alias es='fzf --bind "enter:execute(nvim {})"'


# ===========================
# Prompt Configuration
# ===========================
# Configure the shell prompt.

eval "$(starship init zsh)"


# ===========================
# Tmux Session Management
# ===========================
# Automatically start a tmux session if tmux is installed.

if command -v tmux >/dev/null 2>&1; then
  if ! tmux has-session -t main 2>/dev/null; then
    tmux new-session -d -s main
  fi
fi


# ===========================
# FZF Configuration
# ===========================
# Load custom fzf configuration if it exists.

if [ -f ~/.config/fzf/config.sh ]; then
  source ~/.config/fzf/config.sh
fi
