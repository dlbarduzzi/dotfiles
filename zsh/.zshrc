echo "Loading file: $HOME/.zshrc"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme.
ZSH_THEME="dylan"

# oh-my-zsh plugins.
plugins=(git)

# Activate oh-my-zsh.
source $ZSH/oh-my-zsh.sh

# Activate plugins.
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load anything else (this should be a file used in your local env only, not repo).
source ~/.profile

