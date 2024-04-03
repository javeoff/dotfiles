#!/usr/bin/env bash

RED='\033[0;31m'
NC='\033[0m'

#
# Gitconfig
#

if [ -f "~/.gitconfig" ]; then
  printf "${RED} ~/.gitconfig already exists. Do yo want to recreate it? "
  read -p "[y/n]${NC} " input
fi

case $input in
'' | [Nn]*)
  # nothing
  ;;
[Yy]*)
  rm ~/.gitconfig
esac

if [[ -f "$CONFIG_DIR/git-config/gitconfig" ]]; then
  if [ ! -f ~/.gitconfig ]; then
    echo "Create symbol link of .gitconfig"
    sudo ln -s $CONFIG_DIR/git-config/gitconfig ~/.gitconfig
  fi
fi

#
# Gitignore
#

if [ -f "~/.gitignore" ]; then
  printf "${RED} ~/.gitignore already exists. Do yo want to recreate it? "
  read -p "[y/n]${NC} " input
fi

case $input in
'' | [Nn]*)
  # nothing
  ;;
[Yy]*)
  rm ~/.gitignore
esac

if [[ -f "$CONFIG_DIR/git-config/gitignore" ]]; then
  if [ ! -f ~/.gitignore ]; then
    echo "Create symbol link of .gitignore"
    sudo ln -s $CONFIG_DIR/git-config/gitignore ~/.gitignore
  fi
fi

read -p 'Do you want to enter your Git user name ? [y/n]' input
case $input in
'' | [Nn]*)
  echo "Skip"
  ;;
[Yy]*)
  read -p 'Git user name:' name
  git config --global user.name $name
  git config user.name
  ;;
esac

read -p 'Do you want to enter your Git user e-mail ? [y/n]' input
case $input in
'' | [Nn]*)
  echo "Skip"
  ;;
[Yy]*)
  read -p 'Git user e-mail:' mail
  git config --global user.email $mail
  git config user.email
  ;;
esac

read -p 'Do you want to enter your GitHub Access Token ? [y/n]' input
case $input in
'' | [Nn]*)
  echo "Skip"
  ;;
[Yy]*)
  read -p 'GitHub Access Token:' token
  echo "export GITHUB_ACCESS_TOKEN=${token}" >>~/.config/zsh/private.zsh
  echo "export HOMEBREW_GITHUB_API_TOKEN=${token}" >>~/.config/zsh/private.zsh
  echo "Writing to ~/.config/zsh/private.zsh is complete."
  source ~/.zshrc
  ;;
esac
