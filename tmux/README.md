# tmux

## Installation

### MacOS

```sh
brew install tmux
```

## Before getting started

Consider running the following commands for a fresh install.

```sh
TBD
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
