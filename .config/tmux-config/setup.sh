source ~/.env.sh

if [ -d ~/.config/tmux ]; then
  rm -rf ~/.config/tmux
fi

mkdir ~/.config/tmux

rm ~/.config/tmux/.tmux.conf.local
rm ~/.tmux.conf
rm ~/.config/tmux/plugins

sudo ln -s $DOTFILES_DIR/.config/tmux-config/tmux.conf.local ~/.config/tmux/.tmux.conf.local
sudo ln -s $DOTFILES_DIR/.config/tmux-config/tmux.conf ~/.tmux.conf
sudo ln -s $DOTFILES_DIR/.config/tmux-config/tmux.conf ~/.config/tmux/.tmux.conf
sudo ln -s $DOTFILES_DIR/.config/tmux-config/plugins ~/.config/tmux/plugins
