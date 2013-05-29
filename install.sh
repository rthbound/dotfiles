#!/bin/bash
set -e

# Full path to local repository
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf ~/.gitconfig
rm -rf ~/.vimrc
rm -rf ~/.vim

ln -s "${DIR}/gitconfig" ~/.gitconfig
ln -s "${DIR}/vim/vimrc" ~/.vimrc
ln -s "${DIR}/vim" ~/.vim
