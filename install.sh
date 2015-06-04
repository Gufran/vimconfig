#!/bin/bash

git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim
vim +VundleInstall +qa

echo "\nMaking YouCompleteMe - \n"
/bin/bash $HOME/.vim/bundle/YouCompleteMe/install.sh &> /dev/null
echo "\nMaking Tagbar - \n"
cd $HOME/.vim/bundle/tagbar-phpctags.vim/ && make &> /dev/null && cd -
echo "\nMaking Ultisnip - \n"
/bin/bash $HOME/.vim/bundle/ultisnips/install_vim.sh &> /dev/null
echo "\nMaking Vimproc - \n"
cd $HOME/.vim/bundle/vimproc/ && make &> /dev/null && cd -

ln -s $HOME/.vim/vimrc $HOME/.vimrc

echo "\nDone!\n"
