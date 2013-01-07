#!/usr/bin/env bash

# Symlink all the files in the 'dotfiles' dir to ~/.filename

for file in `ls ~/.files/dotfiles`
do
  # Is thie file a symlink?
  if [ -L ~/.$file ]
  then
    echo ".${file} is already a symlink. Skipping."
    continue
  fi

  # Does it alread exist? if so back itup to .pre-dotfiles-install.
  if [ -f ~/.$file ]
  then
    echo ".${file} already exists. Backing up."
    mv ~/.$file ~/.$file.pre-dotfiles-install
  fi

  # Create the symlink.
  echo "Symlinking ${file} to ~/.${file}"
  ln -s ~/.files/dotfiles/$file ~/.$file

done

