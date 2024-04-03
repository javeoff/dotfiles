source ~/shared/shared-configs/shared-dotfiles/env.sh

rm -rf ~/.config/yabai

mkdir ~/.config/yabai
sudo ln -s $CONFIG_DIR/yabai/* ~/.config/yabai
