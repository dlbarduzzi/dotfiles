echo "Loading file: $HOME/.zshrc"

# Activate plugins.
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Initiate starship.
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# Load anything else (this should be a file used in your local env only, not repo).
source ~/.profile
