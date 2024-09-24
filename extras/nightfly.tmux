#!/usr/bin/env bash
#
# nightfly theme
#
# Upstream: github.com/bluz71/vim-nightfly-colors

# Set status line, windows, pane and message colors.
set -g message-style "bg=#092236,fg=#9fa8b6"
set -g pane-active-border-style "bg=#011627,fg=#82aaff"
set -g pane-border-style "bg=#011627,fg=#2f3346"
set -g status-style "bg=#092236,fg=#9fa8b6"
setw -g window-status-activity-style none
setw -g window-status-current-style "bg=#34415a,fg=#82aaff"
# Set active and inactive window style.
setw -g window-status-current-format " #I #[fg=#9fa8b6] #[fg=default]#W #[fg=#ff5874]#{?window_flags,#{window_flags}, }#[fg=default] "
setw -g window-status-format " #I  #W #[fg=#ff5874]#{?window_flags,#{window_flags}, }#[fg=default] "

# Set status bar components and style.
set -g status-left "#[fg=#f78c6c]⠶ #[fg=#82aaff]#S@#h "
if-shell '[[ $(uname) = Darwin ]]' \
    'set -g status-right "%a %d %b  #[fg=#82aaff]%I:%M%p"' \
    'set -g status-right "%a %d %b  #[fg=#82aaff]%I:%M%P"' \
