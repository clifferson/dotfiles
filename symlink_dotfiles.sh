#!/usr/bin/env bash

# Symlink all the files in the 'dotfiles' dir to ~/.filename

for file in `ls ~/.files/dotfiles`
do
  # Is thie file all ready symlinked to where it should be? if so skip it.
  if [ $(stat -F ~/.$file | awk '{print $NF}') = $HOME/.files/dotfiles/$file ]
  then
    echo ".${file} is already pointing to ${HOME}/.files/dotfiles/${file}"
    continue
  fi

  # Does it alread exist? if so back it up to ~/.$file.pre-dotfiles-install.
  if [ -f ~/.$file ]
  then
    echo ".${file} already exists. Backing up."
    mv ~/.$file ~/.$file.pre-dotfiles-install
  fi

  # Create the symlink.
  echo "Symlinking ${file} to ~/.${file}"
  ln -s ~/.files/dotfiles/$file ~/.$file

done

