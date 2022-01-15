#!/bin/bash

# Get current working dir of script
CWD=$(cd `dirname $0` && pwd)

# Clone solarized repos
if [[ ! -d "$HOME/vim-colors-solarized" ]]; then
    git clone https://github.com/altercation/vim-colors-solarized.git ~/vim-colors-solarized
fi

if [[ ! -d "$HOME/dircolors-solarized" ]]; then
    git clone https://github.com/seebi/dircolors-solarized.git ~/dircolors-solarized
fi

# Install vim dependencies
sudo apt-get update && sudo apt-get install vim-gui-common

# Create symlinks for bash profile
if [[ -f "$HOME/.profile" ]]; then
    rm ~/.profile
fi
ln -s "$CWD/.profile" ~/.profile

# Make the .vim/colors dir locally if it doesn't exist
if [[ ! -d "$HOME/.vim/colors" ]]; then
    mkdir -p ~/.vim/colors/
fi

# Create a symlink for the vim colors if it doesn't exist
if [[ -f "$HOME/.vim/colors/solarized.vim" ]]; then
    rm ~/.vim/colors/solarized.vim
fi
ln -s ~/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim

# Create symlinks for bash profile
if [[ -f "$HOME/.vimrc" ]]; then
    rm ~/.vimrc
fi
ln -s "$CWD/.vimrc" ~/.vimrc

# Create symlinks for gitconfig profile
if [[ -f "$HOME/.gitconfig" ]]; then
    rm ~/.gitconfig
fi
ln -s "$CWD/.gitconfig" ~/.gitconfig