" Enable true color support
if !has('gui_running')
    let &t_8f="\e[38;2;%ld;%ld;%ldm"
    let &t_8b="\e[48;2;%ld;%ld;%ldm"
    set guicolors
endif

colorscheme apprentice
set background=dark
set nocompatible
set wildmode=longest,list
set history=10000
set undofile
set undodir=~/.vim/undodir
set autoread
set wildmenu
set completeopt=menu
set hidden
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set magic
set nobackup
set noswapfile
set incsearch
set ignorecase
set smartcase
set hlsearch
set showmode
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
set showbreak=\ \ \ \ >\ \ \ \ 
set noerrorbells
set shiftround
set statusline=
set laststatus=2

" GUI Specific options

if has('gui_running')
    if has('mac')
        set guifont=Menlo\ for\ Powerline:h14
    elseif has('unix')
        set guifont=Source\ Code\ Pro\ For\ Powerline
    endif

    set linespace=8
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guioptions-=l
    set guioptions-=b
    set guioptions-=m
    set guioptions-=P
    set guioptions-=c
endif

" Put the statusline to some use
hi User0 guifg=#ffffff  guibg=#094afe
hi User1 guifg=#ffffff  guibg=#810085
hi User2 guifg=#051d00  guibg=#7dcc7d
hi User3 guifg=#ffffff  guibg=#5b7fbb

set statusline+=%0*\[Buf\ %n]                  "buffernr
set statusline+=%2*\ %f\                       "File+path
set statusline+=%0*\ %y\                       "FileType
set statusline+=%0*\ %=\ row:%l/%L\ (%03p%%)\  "Rownumber/total (%)
set statusline+=%2*\ col:%03c\                 "Colnr
set statusline+=%2*\ \ %m%r%w\ %P\ \           "Modified? Readonly? Top/bot.
