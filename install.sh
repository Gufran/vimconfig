#!/bin/bash

# If this script is piped to bash instead of direct execution, it must clone
# the configuration to .vim directory before it can proceed.
if [ ! -t 0 ]; then
    if [ -e $HOME/.vim ]; then
        echo "Moving existing vim configuration to $HOME/.vim_old"
        mv $HOME/.vim $HOME/.vim_old
    fi

    echo "Downloading new vim configuration..."
    git clone https://github.com/Gufran/vimconfig $HOME/.vim 1> /dev/null
fi

echo "Installing vim-plug as default plugin manager. hang on..."
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &> /dev/null

echo "Installing plugins..."
vim --noplugin -c "source ~/.vim/autoload/plug.vim" +PlugInstall +qa - > /dev/tty

if [ -f $HOME/.vimrc ]; then 
    mv $HOME/.vimrc $HOME/.vimrc_old
    echo "Your previous vimrc file has been moved from $HOME/.vimrc to $HOME/.vimrc_old"
fi

ln -s $HOME/.vim/vimrc $HOME/.vimrc

echo "Enjoy the new configuration."
