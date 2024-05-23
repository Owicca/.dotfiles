#!/usr/bin/env bash


mkdir -p ~/.config/nvim/
cp ./.config/nvim/init.vim ~/.config/nvim/init.vim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

cp ./bashrc ~/.bashrc_local
echo "source ~/.bashrc_local" >> ~/.bashrc
