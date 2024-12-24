# zsh

## Before getting started

Create a `~/.profile` file so you can load any personal configs.

- This file should not be commited to the repo. 
- This file is called inside the [.zshrc](./.zshrc) file.

For example, your file content could look like below:

```sh
echo "Loading file: $HOME/.profile"

# Aliases.
alias vim2="/usr/bin/vim"
alias vim="/opt/homebrew/bin/nvim"
```

## Copy file to user's home path

```sh
cp .zshrc ~/.zshrc
```

## Install dependencies

```sh
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
```
