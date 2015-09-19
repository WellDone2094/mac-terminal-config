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
# Tmux
## install tmux
printf "${COLOR}install tmux ...${NC}\n"
brew install tmux

## create needed dirs
mkdir_if_ne ~/.tmux

## link files
printf "${COLOR}link tmux config ...${NC}\n"
ln -sf $CURR_PATH/Tmux/tmux.conf ~/.tmux.conf
ln -sf $CURR_PATH/Tmux/spotify.script ~/.tmux/spotify.script

