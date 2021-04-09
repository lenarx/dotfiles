mkdir $HOME/.zsh-plugins

ZSH_PLUGINS=$HOME/.zsh-plugins

git clone git@github.com:zdharma/fast-syntax-highlighting.git $ZSH_PLUGINS/fast-syntax-highlighting

git clone git@github.com:zsh-users/zsh-autosuggestions.git $ZSH_PLUGINS/zsh-autosuggestions

wget -O $ZSH_PLUGINS/completion.zsh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/completion.zsh

wget -O $ZSH_PLUGINS/.zsh-plugins/history.zsh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/history.zsh

wget -O $ZSH_PLUGINS/.zsh-plugins/key-bindings.zsh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/key-bindings.zsh
