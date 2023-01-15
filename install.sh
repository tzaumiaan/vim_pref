#!/bin/bash

# macos has no realpath bash command
realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

HOME=`realpath ~`
VIMRC_PATH=${HOME}
VIM_THEME_PATH=${HOME}/.vim/colors
VIM_SWAP_PATH=${HOME}/.vim/swap  # used in .vimrc

echo "VIM env takes [${HOME}] as home directory..."

link_file () {
  # $1: link folder path
  # $2: source folder path
  # $3: file name
  rm -rf $1/$3
  mkdir -p $1
  ln -s $2/$3 $1/$3
  if [ ! -L $1/$3 ] || [ ! -e $1/$3 ] ; then
    echo "Error: [$3] cannot be linked! Aborted!"
    exit 1
  fi
  echo "[$3] successfully linked: [$1/$3] -> [$2/$3]!"
}

link_file ${VIMRC_PATH} `realpath .` .vimrc
link_file ${VIM_THEME_PATH} `realpath .` salmon.vim
mkdir -p ${VIM_SWAP_PATH}
