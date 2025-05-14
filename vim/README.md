# vim

## Before getting started

Consider running the following commands for a fresh configuration.

```sh
mv ~/.vim ~/.vim.bak_$(date +%Y%m%d%H%M%S)
mv ~/.vimrc ~/.vimrc.bak_$(date +%Y%m%d%H%M%S)
rm -rf ~/.vim
rm -rf ~/.viminfo
```

## Copy files

```sh
cp vim/.vimrc ~/.vimrc
mkdir -p ~/.vim/after/ftplugin
scp -r vim/.vim/after/ftplugin/* ~/.vim/after/ftplugin
```
