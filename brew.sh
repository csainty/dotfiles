#!/usr/bin/env bash

# Install Homebrew
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install and upgrade casks
brew install caskroom/cask/brew-cask

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh

# Install other useful binaries.
brew install ack
brew install dark-mode
brew install git
brew install git-lfs
brew install rename
#brew install nvm

# Casks
#brew cask install google-chrome
#brew cask install firefox
#brew cask install iterm2
#brew cask install java
#brew cask install caffeine
#brew cask install flux
#brew cask install dropbox
#brew cask install snagit
#brew cask install atom
#brew cask install beyond-compare
#brew cask install crashplan
#brew cask install spotify
#brew cask install sourcetree
#brew cask install httpscoop
#brew cask install cloak
#brew cask install libreoffice
#brew cask install the-unarchiver


# Remove outdated versions from the cellar.
brew cleanup
brew cask cleanup
