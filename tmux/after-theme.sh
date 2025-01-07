#!/usr/bin/env bash

set -e
set -ox pipefail

# Background
tmux set -g status-style 'bg=#1e2030'

# Left status
tmux set -g status-left ""

# Windows focus
tmux set -g window-status-current-format "#[bg=#c3e88d,fg=#222436] #I #[bg=#2f334d,fg=#c8d3f5] #W "
tmux set -g window-status-format "#[bg=#828bb8,fg=#222436] #I #[bg=#2f334d,fg=#c8d3f5] #W "

# Right status
tmux set -g status-right '#[bg=#2f334d,fg=#c8d3f5] #(echo #{pane_current_path} | sed "s,^$HOME,~,") #[bg=#c099ff,fg=#222436] #S ' 

