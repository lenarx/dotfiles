#!/bin/sh
echo "Setting up your Mac..."

sudo -v

# Install Xcode Developer Tools
xcode-select --install

# Create a Sites directory
mkdir $HOME/Code

# Clone repository files
git clone https://github.com/lenarx/dotfiles.git ~/Code/.dotfiles

# Check for Homebrew and install if we don't have it
[ ! -f "`which brew`" ] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/Code/dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file=~/Code/dotfiles/Brewfile

# Install PHP extensions with PECL
pecl install imagick redis swoole

# Install global Composer packages
/usr/local/bin/composer global require beyondcode/expose laravel/installer laravel/valet spatie/global-ray spatie/visit

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Install Global Ray
$HOME/.composer/vendor/bin/global-ray install
