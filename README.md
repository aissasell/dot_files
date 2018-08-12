# Dot Files

This repository keeps a copy of all of the dot files used on my personal linux system. 

## i3

This direcytory consists of the following files:

* config - Basic i3 config for the system. This contains declarations for i3-gaps as well, so those will need to be removed for a pure i3 system.
* battery_checker.sh -  A script used to check the Battery percentage for a simple linux system.
* get-window-info.sh - A script used to get window information in XORG. This is primarily used to get the window class for assigning windows to desktops in i3, thought it is not actually used in the i3 config.

## Polybar

This directory contains the configuration for polybar:

* config - Basic config for polybar
* isrunning-openvpn.sh - Checks whether or not openvpn is running
* launch.sh - A script to help i3 start and stop polybar
* pkg.sh -  A script that displays how many packages can be updated from `pacman` and `AUR`. This script will only work on an Arch system with `yay` installed.

## Rofi

* config - Basic rofi color configuration
* config.rasi - Basic theme config for Rofi
* scripts/bookmarks.sh - uses surfaw to allow searchable bookmarks
* scripts/locate.sh - searches the /home and /media directory for provided input (uses locate command)
* scripts/rofi-chooser.sh - A script for launching rofi inside of i3. By default this setup includes the websearch and locate scripts, as well as a greenclip command that prints out everything on your greenclip clipboard.
* wesearch.sh - uses surfaw to search the internet for provided input

## dunstrc

Basic Dunst configuration for system notifications.

## tmux.conf

Basic tmux configuration for using a centered status line.

## vimrc

Extensive Vim file.

This file uses Vundle and implements a number of plugins:

* ::mattn/emmet-vim::
* ::easymotion/vim-easymotion::
* ::kien/ctrlp.vim::
* ::klen/python-mode::
* ::davidhalter/jedi-vim::
* ::scrooloose/nerdtree::
* ::Xuyuanp/nerdtree-git-plugin::
* ::scrooloose/nerdcommenter::
* ::scrooloose/syntastic::
* ::kshenoy/vim-signature::
* ::spolu/dwm.vim::
* ::Valloric/MatchTagAlways::
* ::tmhedberg/SimpylFold::
* ::powerline/powerline::

## zshrc 

Basic ZSH setup with oh-my-zsh. Also contains a number of alias's for working with Python and Django as well as basic setup for Pipenv.
