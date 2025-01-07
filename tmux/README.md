# tmux

## Installation

### MacOS

```sh
brew install tmux
```

## Before getting started

Consider running the following commands for a fresh install.

```sh
mv ~/.config/tmux ~/.config/tmux.bak_$(date +%Y%m%d%H%M%S)
rm -rf ~/.local/share/tmux
rm -rf ~/.local/state/tmux
rm -rf ~/.cache/tmux
```

## Install dependencies

Install tmux plugin manager [tpm](https://github.com/tmux-plugins/tpm).

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Create a symlink

```sh
ln -s $(pwd)/tmux ~/.config/tmux
```

## Load configs

```sh
tmux source ~/.config/tmux/tmux.conf
```
