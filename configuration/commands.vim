" Enable true color support
if has('gui_running')
    if has('mac')
        set guifont=Fira\ Code\ Retina:h14
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
else
    let &t_8f="\e[38;2;%ld;%ld;%ldm"
    let &t_8b="\e[48;2;%ld;%ld;%ldm"

    if !has('nvim')
        set t_ut=
        set guicolors
    endif
endif

if !has('nvim')
    set nocompatible
    set backspace=indent,eol,start
    set autoread
    set autoindent smartindent cindent
    set hlsearch
    set incsearch
    set laststatus=2
    set mouse=a
    set smarttab
    set wildmenu
endif

colorscheme onedark
set background=dark
set wildmode=longest,list
set history=10000
set undofile
set undodir=~/.vim/undodir
set completeopt=menu
set hidden
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set magic
set nobackup
set noswapfile
set ignorecase
set smartcase
set showmode
set pastetoggle=<F2>
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set wrap
set linebreak
set showbreak=\ \ \ \ ↘\ \ \ \ 
set noerrorbells
set shiftround
set statusline=

" Statusline {{{
hi User0 guifg=#ffffff  guibg=#094afe
hi User1 guifg=#ffffff  guibg=#810085
hi User2 guifg=#051d00  guibg=#7dcc7d
hi User3 guifg=#ffffff  guibg=#5b7fbb

set statusline+=%0*\[Buf\ %n]                  " buffernr
set statusline+=%2*\ %f\                       " File+path
set statusline+=%0*\ %y\                       " FileType
set statusline+=%0*\ %=\ row:%l/%L\ (%03p%%)\  " Rownumber/total (%)
set statusline+=%2*\ col:%03c\                 " Colnr
set statusline+=%2*\ \ %m%r%w\ %P\ \           " Modified? Readonly? Top/bot.
" }}}
