#!/bin/bash

echo "Installing Vundle as default plugin manager. hang on."
git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim &> /dev/null
vim +VundleInstall +qa

echo "Making Vimproc - "
cd $HOME/.vim/bundle/vimproc/ && make &> /dev/null && cd - &> /dev/null

if [ -f $HOME/.vimrc ]; then 
    mv $HOME/.vimrc $HOME/.vimrc_old
    echo "Your previous vimrc file has been moved from $HOME/.vimrc to $HOME/.vimrc_old"
    echo "You might want to manually copy over the config you want from older file."
fi

ln -s $HOME/.vim/vimrc $HOME/.vimrc

echo "Enjoy the new configuration."
