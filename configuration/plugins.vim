" Plugin definitions
call plug#begin('~/.vim/bundle')

Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'sjl/gundo.vim'
Plug 'moll/vim-bbye'
Plug 'xolox/vim-misc'
Plug 'MaxSt/FlatColor'
Plug 'Shougo/unite.vim'
Plug 'ervandew/supertab'
Plug 'tsukkee/unite-tag'
Plug 'ap/vim-buftabline'
Plug 'Shougo/neoyank.vim'
Plug 'romainl/apprentice'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/unite-outline'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer' }
Plug 'airblade/vim-gitgutter'
Plug 'm2mdas/phpcomplete-extended', { 'for': 'php' }

call plug#end()
