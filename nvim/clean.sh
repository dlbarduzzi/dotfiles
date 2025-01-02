#!/usr/bin/env bash

set -e
set -ox pipefail

mv ~/.config/nvim ~/.config/nvim.bak_$(date +%Y%m%d%H%M%S)
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
