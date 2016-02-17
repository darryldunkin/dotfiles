#!/bin/bash

LINKS=(.vimrc .vim .tmux.conf .minttyrc .atom)

for i in  "${LINKS[@]}"
do
  ln -s ~/dotfiles/$i ~/test
done
