" Plugin definitions
call plug#begin('~/.vim/bundle')

Plug 'fatih/vim-go'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'moll/vim-bbye'
Plug 'xolox/vim-misc'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/unite.vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'tsukkee/unite-tag'
Plug 'ap/vim-buftabline'
Plug 'majutsushi/tagbar'
Plug 'robertmeta/nofrils'
Plug 'Shougo/neoyank.vim'
Plug 'romainl/apprentice'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/unite-outline'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'kylef/apiblueprint.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer' }
Plug 'airblade/vim-gitgutter'

call plug#end()
