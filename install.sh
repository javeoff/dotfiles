git clone git@github.com:javeoff/dotfiles.git --recurse-submodules
cd dotfiles
git clone https://github.com/Homebrew/brew ~/homebrew
eval "$(~/homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
curl -L git.io/antigen > antigen.zsh
ln -s ./.env ~/.env
ln -s ./nvim ~/.config/nvim
ln -s ./zshrc ~/.zshrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install --lts
nvm use --lts
bash ./packages.sh
source .env set
oco config set OCO_API_KEY=$OPENAI_API_KEY
