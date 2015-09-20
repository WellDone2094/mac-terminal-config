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


# Zsh
## install oh-my-zsh 
if ! type uninstall_oh_my_zsh &> /dev/null; then
	printf "${COLOR}installing oh-my-zh${NC}\n"
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# link confg files
printf "${COLOR}linking zsh config${NC}\n"
touch ~/.zsh_local
ln -sf $CURR_PATH/Zsh/zshrc ~/.zshrc
ln -sf $CURR_PATH/Zsh/remy.zsh-theme ~/.oh-my-zsh/themes/remy.zsh-theme
ln -sf $CURR_PATH/Zsh/batcharge.py ~/.oh-my-zsh/batcharge.py
