update: brew_update
brew_update:
	brew bundle --file=Brewfile
fix_perm:
	sudo chmod -R +x ./scripts
set_key:
	./scripts/encrypt_key.sh
get_key:
	./scripts/decrypt_key.sh

