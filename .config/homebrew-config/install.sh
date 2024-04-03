#!/usr/bin/env bash

if ! hash brew 2>/dev/null; then
  echo " --------- Homebrew ----------"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  source ~/.zprofile
  brew -v
  echo " ------------ END ------------"
fi

# Install python
python3 -m pip install --user --upgrade pynvim

cd ~/.config/homebrew

# Make sure we’re using the latest Homebrew.
# brew update

# Upgrade any already-installed formulae.
brew upgrade

brew bundle --file=Brewfile

# Remove outdated versions from the cellar.
brew cleanup
