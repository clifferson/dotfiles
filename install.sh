#!/usr/bin/env bash

echo "Cloning dotfiles"
hash git >/dev/null && /usr/bin/env git clone  git@github.com:clifferson/dotfiles.git ~/.files || {
  echo "git not installed"
  exit
}

echo "Running symlink_dotfiles.sh"
/usr/bin/env bash ~/.files/symlink_dotfiles.sh
