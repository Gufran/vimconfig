colorscheme obsidian2
set nocompatible
set wildmode=longest,list
set history=10000
set undofile
set undodir=~/.vim/undodir
set autoread
set wildmenu
set hidden
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set magic
set nobackup
set noswapfile
set incsearch
set ignorecase
set smartcase
set hlsearch
set noshowmode
set pastetoggle=<F2>
set mouse=a
set number
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set autoindent smartindent cindent
set expandtab
set backspace=indent,eol,start
set wrap
set linebreak
set showbreak=...
set noerrorbells
set shiftround
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2

" GUI Specific options

if has('gui_running')
    set guifont=Menlo\ for\ Powerline:h16
    set linespace=10
    set guioptions-=T 
    set guioptions-=r 
    set guioptions-=L 
endif
