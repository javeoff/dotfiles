install: 
	zx ./scripts/install.mjs
setup: 
	zx ./scripts/setup.mjs
update: brew-update
system-setup:
	/bin/bash ./.config/system-config/setup.sh
zsh-setup:
	/bin/bash ./.config/zsh-config/setup.sh
ssh-setup:
	/bin/bash ./.config/ssh-config/setup.sh
git-setup:
	/bin/bash ./.config/git-config/setup.sh
npm-setup:
	/bin/zsh ./.config/npm-config/setup.sh
npm-install:
	/bin/zsh ./.config/npm-config/install.sh
brew-setup:
	/bin/zsh ./.config/homebrew-config/setup.sh
brew-install:
	/bin/zsh ./.config/homebrew-config/install.sh
brew-update:
	brew upgrade && \
    brew bundle --file=./.config/homebrew-config/Brewfile && \
    brew cleanup
neovim-setup:
	/bin/zsh ./.config/neovim-config/setup.sh
hyper-setup:
	/bin/zsh ./.config/hyper-config/setup.sh
