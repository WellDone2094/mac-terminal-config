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



# Tmux
## install tmux
printf "${COLOR}installing tmux${NC}\n"
brew install tmux

## create needed dirs
mkdir_if_ne ~/.tmux

## link files
printf "${COLOR}linking tmux config${NC}\n"
ln -sf $CURR_PATH/Tmux/tmux.conf ~/.tmux.conf
ln -sf $CURR_PATH/Tmux/spotify.scpt ~/.tmux/spotify.scpt

