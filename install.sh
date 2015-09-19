#!/bin/bash

CURR_PATH=`pwd`
COLOR='\033[4;42;30m'
NC='\033[0m'

# Brew
## install brew 
printf "${COLOR}install brew ...${NC}\n"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 

sh Zsh/install.sh -b
sh Tmux/install.sh -b
sh VIM/install.sh -b

