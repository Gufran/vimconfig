" Plugin definitions
call plug#begin('~/.vim/bundle')

Plug 'fatih/vim-go',                          { 'for': 'go' }
Plug 'rakr/vim-one'
Plug 'moll/vim-bbye'
Plug 'Shougo/unite.vim'
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'
Plug 'ap/vim-buftabline'
Plug 'Shougo/neoyank.vim'
Plug 'tpope/vim-surround'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/unite-outline'
Plug 'tpope/vim-commentary'
Plug 'Valloric/YouCompleteMe',                { 'do': './install.py' }
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown',               { 'for': 'markdown' }

call plug#end()
