#!/usr/bin/env bash

echo "Cloning dotfiles"
hash git >/dev/null && /usr/bin/env git clone https://github.com/clifferson/dotfiles.git ~/.files || {
  echo "git not installed"
  exit
}

echo "Running symlink_dotfiles.sh"
/usr/bin/env bash ~/.dotfiles/symlink_dotfiles.sh
