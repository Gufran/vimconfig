" automatically create parent dirs on write buffer
augroup BWCCreateDir
    au!
    autocmd BufWritePre * if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h")) | execute "silent! !mkdir -p %:h" | redraw! | endif
augroup END

" Relative numbers in command mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

autocmd StdinReadPre * let s:std_in=1

" Enable syntax highlighting for config files
autocmd FileType vim set syntax=vim

" Highlight current line in current window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Open the doc or definition in vertical split
au FileType go nmap K <Plug>(go-doc-vertical)
au FileType go nmap <leader>K <Plug>(go-def-vertical)

" Rename identifier under cursor
au FileType go nmap <S-F6> <Plug>(go-rename)

" Lint Go on save
autocmd BufWritePre *.go :GoLint

" Save my folds, vim
set viewoptions-=options
augroup vimrc
    autocmd BufWritePost *
    \   if expand('%') != '' && &buftype !~ 'nofile'
    \|      mkview
    \|  endif
    autocmd BufRead *
    \   if expand('%') != '' && &buftype !~ 'nofile'
    \|      silent loadview
    \|  endif
augroup END
