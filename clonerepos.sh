#!/bin/bash

echo linking repo vimrc to the .vimrc init file
if [ -d "$HOME/vimstuff" ]; then
	ln -sf ~/vimstuff/.vimrc ~/.vimrc 
	if [-d "$HOME/vimstuff" ]; then
		cd $HOME/vimstuff/bundle
	else
		mkdir $HOME/vimstuff/bundle
		cd $HOME/vimstuff/bundle
	fi
	echo cloning repos
	git clone https://github.com/kien/rainbow_parentheses.vim.git
	git clone https://github.com/Lokaltog/vim-easymotion.git
	git clone https://github.com/tpope/vim-surround.git
	git clone https://github.com/tpope/vim-fugitive.git
	git clone https://github.com/vim-scripts/Conque-Shell.git
	git clone https://github.com/tpope/vim-markdown.git
	git clone https://github.com/altercation/vim-colors-solarized.git
	git clone https://github.com/Valloric/YouCompleteMe.git
	cd $HOME/vimstuff/YouCompleteMe
	git submodule update --init --recursive
fi