export DOTFILES=$HOME/Code/.dotfiles

eval "$(/opt/homebrew/bin/brew shellenv)"

# Load path variables
source $DOTFILES/path.zsh

# Load aliases
source $DOTFILES/aliases.zsh
