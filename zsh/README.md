# zsh

## Before getting started

Create a `~/.profile` file so you can load any local configs.

- This file should not be commited to the repo. 
- This file is called inside the [.zshrc](./.zshrc) file.

For example, your file content could look like below:

```sh
echo "Loading file: $HOME/.profile"

# Aliases.
alias vim2="/usr/bin/vim"
alias vim="/opt/homebrew/bin/nvim"
```

## Create a symlink

```sh
ln -s $(pwd)/zsh/.zshrc ~/.zshrc
```

## Install dependencies

```sh
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
```

## Install on-my-zsh

See instructions at [https://ohmyz.sh/](https://ohmyz.sh/)

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Add custom theme

1. Copy `dylan.zsh-theme` file to location `~/.oh-my-zsh/themes/dylan.zsh-theme`
2. Update `~/.zshrc` file theme variable `ZSH_THEME="dylan"`
3. Reload `~/.zshrc` file by running command `source ~/.zshrc`
