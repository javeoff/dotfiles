source ~/shared/shared-configs/shared-dotfiles/env.sh

# Move environments to ~/.env.sh
rm ~/.env.sh
sudo ln -s $DOTFILES_DIR/env.sh ~/.env.sh

# Move zshrc to the root
rm ~/.zshrc
sudo ln -s $DOTFILES_DIR/.config/zsh-config/zshrc ~/.zshrc
