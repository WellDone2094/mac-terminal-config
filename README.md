# mac terminal config
This repository contains configuration for Zsh Tmux and Vim.
It's suggest to use those configurations on iTerm2 with solarized-dark theme 

<img src="http://s4.postimg.org/lqh34pq4t/Screen_Shot_2015_09_20_at_00_44_53.png" style="with:600px;">

## Components
* brew
* oh-my-zsh
* vim (brew version)
* tmux

## Installation
clone or download this repository and place it where u want but remeber that if u chage the place of this direcotry you have to re-execute the install script, after the download open a terminal and move into the repository direcotry and execute `./install.sh` to install all the configurations

## Zsh
This repository will install oh-my-zsh with a modified version of the agnostic theme, a python script that show the battery left and a script to show if there is connection

To install only zsh configuration execute `./Zsh/install.sh`


## Vim
Last version of vim with Vundle and solarized theme

To install only Vim configuration execute `./Vim/install.sh`

### Vundle package
* gmarik/Vundle.vim
* Raimondi/delimitMate
* scrooloose/nerdtree
* jiangmiao/auto-pairs
* SirVer/ultisnips
* gerw/vim-latex-suite
* kien/ctrlp.vim
* davidhalter/jedi-vim
* Lokaltog/powerline

## Tmux
This repository will install tmux with a blue color scheme and some script to display the current songs on Spotify

### Shortcuts
* &lt;prefix&gt;       		=&gt; C-a
* vertical split 		=&gt; &lt;prefix&gt; |
* orizzontal split 		=&gt; &lt;prefix&gt; -
* move to left pane 	=&gt; &lt;prefix&gt; l
* move to right pane	=&gt; &lt;prefix&gt; h
* move to up pane 		=&gt; &lt;prefix&gt; k
* move to donw pane 	=&gt; &lt;prefix&gt; j
* resize top 			=&gt; &lt;prefix&gt; K
* resize down 			=&gt; &lt;prefix&gt; J
* resize left 			=&gt; &lt;prefix&gt; L
* resize right 			=&gt; &lt;prefix&gt; H

## Credit
Those configurations are based on those posts:
* [https://remysharp.com/2013/07/25/my-terminal-setup](https://remysharp.com/2013/07/25/my-terminal-setup)

