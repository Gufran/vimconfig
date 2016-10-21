" Plugin definitions
call plug#begin('~/.vim/bundle')

Plug 'fatih/vim-go'
Plug 'moll/vim-bbye'
Plug 'xolox/vim-misc'
Plug 'Shougo/unite.vim'
Plug 'tsukkee/unite-tag'
Plug 'ap/vim-buftabline'
Plug 'majutsushi/tagbar'
Plug 'Shougo/neoyank.vim'
Plug 'romainl/apprentice'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/vimfiler.vim'
Plug 'racer-rust/vim-racer'
Plug 'Shougo/unite-outline'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'airblade/vim-gitgutter'
Plug 'elixir-lang/vim-elixir'
Plug 'plasticboy/vim-markdown'
Plug 'chriskempson/base16-vim'
Plug 'rust-lang-nursery/rustfmt'
Plug 'shawncplus/phpcomplete.vim'

call plug#end()
