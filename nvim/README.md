# neovim

## Installation

https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package

```sh
# MacOS
brew install neovim
```

## Gettings started

```sh
mv ~/.config/nvim ~/.config/nvim_$(date +"%Y%m%d%H%M%S")
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

## Create a symlink with this repository localtion

```sh
ln -s $(pwd)/nvim/ ~/.config/nvim
```
