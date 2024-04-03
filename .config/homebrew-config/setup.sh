#!/usr/bin/env bash

echo " ------- Brew Setup ------"
echo "Set shell environment"
eval $(/opt/homebrew/bin/brew shellenv)

if [ ! -f ~/.gitconfig ]; then
  echo "Create homebrew folder"
  mkdir ~/.config/homebrew
fi

if [ ! -f ~/.gitconfig ]; then
  echo "Set symlink for brewfile"
  ln -s ./Brewfile ~/.config/homebrew/
fi

echo " ------------ END ------------"
