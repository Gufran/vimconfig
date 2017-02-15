" Plugin definitions
call plug#begin('~/.vim/bundle')

Plug 'w0rp/ale'
Plug 'fatih/vim-go',                          { 'for': 'go' }
Plug 'rakr/vim-one'
Plug 'moll/vim-bbye'
Plug 'xolox/vim-misc'
Plug 'Shougo/unite.vim'
Plug 'ap/vim-buftabline'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'Shougo/neoyank.vim'
Plug 'romainl/apprentice'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim',                    { 'for': 'rust' }
Plug 'Shougo/vimproc.vim',                    { 'do': 'make' }
Plug 'Shougo/vimfiler.vim'
Plug 'racer-rust/vim-racer',                  { 'for': 'rust' }
Plug 'Shougo/unite-outline'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'Valloric/YouCompleteMe',                { 'do': './install.py --clang-completer' }
Plug 'airblade/vim-gitgutter'
Plug 'elixir-lang/vim-elixir',                { 'for': 'elixir' }
Plug 'plasticboy/vim-markdown',               { 'for': 'markdown' }
Plug 'chriskempson/base16-vim'
Plug 'slashmili/alchemist.vim',               { 'for': 'elixir' }
Plug 'rust-lang-nursery/rustfmt',             { 'for': 'rust' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'shawncplus/phpcomplete.vim',            { 'for': 'php' }
Plug '~/.opam/system/share/merlin/vim',       { 'for': 'ocaml' }

call plug#end()
