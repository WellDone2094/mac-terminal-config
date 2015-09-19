#!/bin/bash

CURR_PATH=`pwd`
COLOR='\033[4;42;30m'
NC='\033[0m'

# usefull function

## create directory if it doesn't exists
function mkdir_if_ne {
	for arg in $@
	do
		if [ ! -d $arg ]; then
			mkdir $arg
		fi
	done
}


# Brew
## install brew 
printf "${COLOR}install brew ...${NC}\n"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
# Vim
## install last vim version
printf "${COLOR}install vim ...${NC}\n"
brew install vim

## create needed dirs
mkdir_if_ne ~/.vim ~/.vim/bundle ~/.vim/.backup ~/.vim/.swp

## install vundle
if [ ! -e ~/.vim/bundle/Vundle.vim ]; then
	printf "${COLOR}install vundle ...${NC}\n"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

## link config files
printf "${COLOR}link vim config ...${NC}\n"
ln -sf $CURR_PATH/Vim/vimrc ~/.vimrc
ln -sf $CURr_PATH/Vim/colors ~/.vim/colors


## install vim plugin
printf "${COLOR}install vim plugin ...${NC}"
vim +BundleInstall +qa!

