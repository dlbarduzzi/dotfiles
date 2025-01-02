# ghostty

## Installation

### MacOS

Follow instructions at [ghostty#macos](https://ghostty.org/docs/install/binary#macos).

```sh
brew install --cask ghostty
```

## Before getting started

Consider running the following commands for a fresh install.

```sh
mv ~/.config/ghostty ~/.config/ghostty.bak_$(date +%Y%m%d%H%M%S)
rm -rf ~/.cache/ghostty
```

## Create a symlink

```sh
ln -s $(pwd)/ghostty ~/.config/ghostty
```
