# starship

[Starship](https://starship.rs)

## Installation

### MacOS

```sh
brew install starship
```

## Before getting started

Consider running the following commands for a fresh install.

```sh
mv ~/.config/starship ~/.config/starship.bak_$(date +%Y%m%d%H%M%S)
rm -rf ~/.cache/starship
```

## Create a symlink

```sh
ln -s $(pwd)/starship ~/.config/starship
```

## Install dependencies

```sh
brew install font-caskaydia-cove-nerd-font
```

## Add init script

```sh
# ~/.zshrc
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
```
