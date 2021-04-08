# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias c="clear"
alias ls='ls -G'
alias ..='cd ..'

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias lara="code && cd laravel/"

# Laravel
alias a="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias seed="php artisan db:seed"
alias a='php artisan'
alias art='php artisan'
alias mfs='php artisan migrate:fresh --seed'
alias serve='php artisan serve'
alias d='docker-compose --project-directory ./laradock  --file=./laradock/docker-compose.yml exec workspace bash'
alias da='docker-compose --project-directory ./laradock  --file=./laradock/docker-compose.yml exec workspace php artisan'
alias sail='bash vendor/bin/sail'

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias php74="docker run -it -w /data -v ${PWD}:/data:delegated --entrypoint php --rm registry.gitlab.com/grahamcampbell/php:7.4"
alias php8="docker run -it -w /data -v ${PWD}:/data:delegated --entrypoint php --rm registry.gitlab.com/grahamcampbell/php:8.0"
alias composer="php -d memory_limit=-1 /usr/local/bin/composer"

code() {
    cd ~/Code
    if [ "$1" != "" ]; then
        cd $1;
    fi
}

function mysqls() {
  command mysql --socket /tmp/mysql_$1.sock -uroot
}

# git
alias gc='git commit -m'
alias push='git push origin $(git branch --show-current)'
alias pull='git pull origin $(git branch --show-current)'
alias gaa='git add .'
alias ga='git add'
alias gs='git status'
alias co='git checkout'
alias nah='git reset --hard && git clean -df'
alias fetch='git fetch origin'
