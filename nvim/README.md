# neovim

## Installation

### MacOS

```sh
brew install neovim
```

## Before getting started

Consider running the following commands for a fresh install.

```sh
mv ~/.config/nvim ~/.config/nvim.bak_$(date +%Y%m%d%H%M%S)
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

## Create a symlink

```sh
ln -s $(pwd)/nvim ~/.config/nvim
```

## Install dependencies

```sh
brew install fd
brew install ripgrep
brew install font-caskaydia-cove-nerd-font
```

## Use neovim instead of vim

Not required, but you could set `vim` to use neovim instead of calling `nvim` command.

```bash
alias vim="/opt/homebrew/bin/nvim"
```
