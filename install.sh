#!/bin/bash

CURR_PATH=`pwd`
COLOR='\033[4;49;34m'
NC='\033[0m'

# Brew
## install brew 
if ! hash brew &> /dev/null; then
	printf "${COLOR}Installing brew${NC}\n"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
fi

sh Zsh/install.sh -b
sh Tmux/install.sh -b
sh VIM/install.sh -b

