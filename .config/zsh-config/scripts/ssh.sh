#!/bin/zsh

ssh-history() {
  cat ~/.zsh_history | grep -E "ssh\s" | sed -e 's/\s*$//' | sort | uniq -c | sort -nr | sed -e "s/^\s*[0-9]*\s//" | sed 's/.*\;//'
}

ssh-connect() {
  local hist=$(ssh-history | tr '\n' '|')
  sudo -u bondarev /bin/zsh -s 'listbox -t "Connect:" -o "$hist" | tee /dev/tty | tail -n 1'
}

ssh-connect
