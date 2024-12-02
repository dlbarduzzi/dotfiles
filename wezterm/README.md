# wezterm

## Installation

### MacOS

```sh
brew install --cask wezterm
```

## Before getting started

Consider running the following commands for a fresh install.

```sh
mv ~/.config/wezterm ~/.config/wezterm.bak_$(date +%Y%m%d%H%M%S)
rm -rf ~/.local/share/wezterm
```

## Dependencies

```sh
brew install font-caskaydia-cove-nerd-font
```

## Create a symlink

```sh
ln -s $(pwd)/wezterm ~/.config/wezterm
```
