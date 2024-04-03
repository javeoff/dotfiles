RED='\033[0;31m'

if [  -d ~/.ssh ]; then
  printf "${RED} ssh folder already exists. Do yo want to recreate it? "
  read -p "[y/n] " input
fi

# Delete ~/.ssh
case $input in
'' | [Nn]*)
  # nothing
  ;;
[Yy]*)
  rm -rf ~/.ssh
esac

# Create ~/.ssh folder if not exists
if [ ! -d ~/.ssh ]; then
  echo "Create .ssh folder ( +/.ssh/config )"
  mkdir ~/.ssh && cp $(
    cd $(dirname ${BASH_SOURCE:-$0})
    pwd
  )/settings/git/config ~/.ssh/config
fi

# Copy git ssh config file
ssh-keygen -t rsa
chmod 600 ~/.ssh/id_rsa
eval $(ssh-agent)
ssh-add ~/.ssh/id_rsa
ssh-add -l
echo "Created new ~/.ssh/id_rsa key"
