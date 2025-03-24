# ===========================
# General Configuration
# ===========================
# Set default applications
export EDITOR="nvim"
export GIT_EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"

# ===========================
# Application Configuration
# ===========================
# Configure application variables
export BAT_THEME="Nord"
export BAT_STYLE="changes,header-filename,header-filesize,grid,numbers"
export MOZ_ENABLE_WAYLAND=1

# ===========================
# Environment Settings
# ===========================
# Configure Wayland, QT, and GTK settings.
export QT_QPA_PLATFORM="wayland"
export GTK_THEME="adw-gtk3-dark"
export QT_QPA_PLATFORMTHEME="qt5ct:qt6ct"
export QT_STYLE_OVERRIDE="kvantum"
export ELECTRON_OZONE_PLATFORM_HINT="wayland"

# ===========================
# Path Configuration
# ===========================
# Extend system PATH.
export PATH="$HOME/.config/emacs/bin:/usr/local/lib/:/home/user/.local/bin:$PATH"

# ===========================
# Desktop Environment
# ===========================
# Set current desktop environment.
export XDG_CURRENT_DESKTOP="sway"
