git clone git@github.com:javeoff/dotfiles.git --recurse-submodules
cd dotfiles
git clone https://github.com/Homebrew/brew ~/homebrew
eval "$(~/homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
ln -s nvim ~/.config/nvim
