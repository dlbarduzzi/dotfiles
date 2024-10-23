# neovim

### Installation

https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package

#### MacOS

Installation using Homebrew.

```sh
brew install neovim
```

### Before getting started

Consider running the following commands for a fresh neovim install.

```sh
mv ~/.config/nvim ~/.config/nvim.bak_$(date +%Y%m%d%H%M%S)
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

### Create neovim symlink

```sh
ln -s $(pwd)/nvim ~/.config/nvim
```

### Install Dependencies

```sh
brew install ripgrep
brew install font-caskaydia-cove-nerd-font
```

### Use neovim instead of vim

Not required, but you could set `vim` to use neovim instead of calling `nvim` command.

```bash
alias vim="/opt/homebrew/bin/nvim"
```
