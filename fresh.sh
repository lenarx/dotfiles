#!/bin/sh
echo "Setting up your Mac..."

# Install Xcode Developer Tools
xcode-select --install

# Check for Homebrew and install if we don't have it
[ ! -f "`which brew`" ] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install PHP extensions with PECL
pecl install imagick redis swoole

# Install global Composer packages
/usr/local/bin/composer global require beyondcode/expose laravel/installer laravel/valet spatie/global-ray spatie/visit

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Install Global Ray
$HOME/.composer/vendor/bin/global-ray install

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir $HOME/Code

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
