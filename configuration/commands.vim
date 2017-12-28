set encoding=utf8

" Enable true color support
if has('gui_running')
    if has('mac')
        set macligatures
        set guifont=Fira\ Code\ Retina:h16
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
    let &t_8f="\e[38;2;%lu;%lu;%lum"
    let &t_8b="\e[48;2;%lu;%lu;%lum"

    if !has('nvim')
        set t_ut=
        set termguicolors
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

if has('gui_macvim')
    set macmeta
endif

if $ITERM_PROFILE =~ "Dark"
    set background=dark
else
    set background=light
endif

colorscheme one

set fileformat=unix
set wildmode=longest,full
set history=1000
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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set wrap
set linebreak
set showbreak=\ \ \ \ ↘\ \ \ \ 
set noerrorbells
set shiftround
set cf
set clipboard+=unnamed
set complete=.,w,b,u,U
set listchars=""
set listchars+=tab:‣‣
set listchars+=trail:∙
set foldlevel=10
set number

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

" Custom commands to help with linux utils {{{
command! -range=% -nargs=0 Columnize :<line1>,<line2>call RunSysCom('column -t -s "' . nr2char(getchar()) . '"')
command! -range=% -nargs=0 Cut       :<line1>,<line2>call RunSysCom('tr -s " " | cut -d "' . input('delimiter', ' ') . '" -f ' . input('fields'))
command! -range=% -nargs=0 Json      :<line1>,<line2>call RunSysCom('python -m json.tool')
command! -range=% -nargs=0 Fold      :<line1>,<line2>call RunSysCom('fold -s -w' . input('width'))
command! -range=% -nargs=0 Trim      :<line1>,<line2>call Trim()
" }}}
