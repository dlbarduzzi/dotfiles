# kitty

## Installation

### MacOS

See instruction at [https://sw.kovidgoyal.net/kitty/binary/](https://sw.kovidgoyal.net/kitty/binary/).

```sh
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

## Before getting started

Consider running the following commands for a fresh install.

```sh
mv ~/.config/kitty ~/.config/kitty.bak_$(date +%Y%m%d%H%M%S)
```

## Create a symlink

```sh
ln -s $(pwd)/kitty ~/.config/kitty
```

## Install dependencies

```sh
brew install font-caskaydia-cove-nerd-font
```

