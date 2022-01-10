#!/bin/bash

# Clone solarized repos
if [[ ! -d "$HOME/vim-colors-solarized" ]]; then
    git clone https://github.com/altercation/vim-colors-solarized.git ~/vim-colors-solarized
fi

if [[ ! -d "$HOME/dircolors-solarized" ]]; then
    git clone https://github.com/seebi/dircolors-solarized.git ~/dircolors-solarized
fi

# Install vim dependencies
sudo apt-get update && sudo apt-get install vim-gui-common

# Create symlinks for bash profile if it doesn't already exist
if [[ ! -L "$HOME/.profile" ]]; then
    if [[ -f "$HOME/.profile" ]]; then
        rm ~/.profile
    fi
    ln -s "${PWD}/.profile" ~/.profile
fi

# Make the .vim/colors dir locally if it doesn't exist
if [[ ! -d "$HOME/.vim/colors" ]]; then
    mkdir -p ~/.vim/colors/
fi

# Create a symlink for the vim colors if it doesn't exist
if [[ ! -L "$HOME/.vim/colors/solarized.vim" ]]; then
    if [[ -f "$HOME/.vim/colors/solarized.vim" ]]; then
        rm ~/.vim/colors/solarized.vim
    fi
    ln -s "${PWD}/vim-colors-solarized/colors/solarized.vim" ~/.vim/colors/solarized.vim
fi

# Create symlinks for bash profile if it doesn't already exist
if [[ ! -L "$HOME/.vimrc" ]]; then
    if [[ -f "$HOME/.vimrc" ]]; then
        rm ~/.vimrc
    fi
    ln -s "${PWD}/.vimrc" ~/.vimrc
fi

# Create symlinks for gitconfig profile if it doesn't already exist
if [[ ! -L "$HOME/.gitconfig" ]]; then
    if [[ -f "$HOME/.gitconfig" ]]; then
        rm ~/.gitconfig
    fi
    ln -s "${PWD}/.gitconfig" ~/.gitconfig
fi