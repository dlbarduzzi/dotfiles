# vim

## Before getting started

Consider running the following commands for a fresh configuration.

```sh
mv ~/.vimrc ~/.vimrc.bak_$(date +%Y%m%d%H%M%S)
rm -rf ~/.vim
rm -rf ~/.viminfo
```

## Create a symlink

```sh
ln -s $(pwd)/vim/.vimrc ~/.vimrc
```
