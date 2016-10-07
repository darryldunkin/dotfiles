#!/usr/bin/env bash

set -o nounset
set -o pipefail

LINKS=(.vimrc .vim .tmux.conf .minttyrc .atom)

# Make generic links
for i in  "${LINKS[@]}"
do
  file="$HOME/$i"
  if [ ! -e $file ]; then
    ln -s ~/dotfiles/$i $file
  fi
done

# Include bashrc
if ! grep -q dotfiles ~/.bashrc; then
  echo 'source ~/dotfiles/.bashrc' >> ~/.bashrc
fi
