source ~/.zshrc

# Initialize NPM RC
rm ~/.npmrc
sudo ln -s $CONFIG_DIR/npm-config/npmrc ~/.npmrc

# Initialize global packages

nvm install --lts
nvm use --lts