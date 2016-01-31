#!/bin/bash -eu

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -o ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# CtrlP
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
