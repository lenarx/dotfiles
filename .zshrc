export DOTFILES=$HOME/.dotfiles
export ZSH_PLUGINS=$HOME/.zsh-plugins

# Load path variables
source $DOTFILES/path.zsh

# Load aliases
source $DOTFILES/aliases.zsh

# Enabling starship
eval "$(starship init zsh)"

# Enable fast syntax highlighting plugin
source $ZSH_PLUGINS/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Load completion config
source $ZSH_PLUGINS/completion.zsh

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH_PLUGINS/history.zsh

source $ZSH_PLUGINS/key-bindings.zsh
