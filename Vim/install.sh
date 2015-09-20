#!/bin/bash

CURR_PATH=`pwd`
COLOR='\033[4;49;34m'
NC='\033[0m'
BREW=1

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

if [ $1 = "-b" ]; then
	BREW=0
fi


# Brew
## install brew
if [ $BREW = 1 ]; then
	if ! hash brew &> /dev/null; then
		printf "${COLOR}installing brew${NC}\n"
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
	fi
fi



# Vim
## install last vim version
printf "${COLOR}installing vim${NC}\n"
brew install vim

## create needed dirs
mkdir_if_ne ~/.vim ~/.vim/bundle ~/.vim/.backup ~/.vim/.swp

## install vundle
if [ ! -e ~/.vim/bundle/Vundle.vim ]; then
	printf "${COLOR}installing vundle${NC}\n"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

## link config files
printf "${COLOR}linking vim config${NC}\n"
ln -sf $CURR_PATH/Vim/vimrc ~/.vimrc
ln -sf $CURr_PATH/Vim/colors ~/.vim/colors


## install vim plugin
printf "${COLOR}installing vim plugin${NC}"
vim +BundleInstall +qa!

