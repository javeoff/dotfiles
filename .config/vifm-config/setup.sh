if [ -d ~/.config/vifm ]; then
  rm ~/.config/vifm/vifmrc
fi

sudo ln -s $DOTFILES_DIR/.config/vifm-config/vifmrc ~/.config/vifm/vifmrc