" automatically create parent dirs on write buffer
augroup BWCCreateDir
    au!
    autocmd BufWritePre * if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h")) | execute "silent! !mkdir -p %:h" | redraw! | endif
augroup END

" Relative numbers in command mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

" Trim whitespaces
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.apxc :%s/\s\+$//e

" Enable syntax highlighting for config files
autocmd FileType vim set syntax=vim

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

" Docblock Generation with <C-S-/> - makes sense for docblocks start with /*
au BufRead,BufNewFile *.php inoremap <buffer> <C-?> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php nnoremap <buffer> <C-?> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php vnoremap <buffer> <C-?> :call PhpDocRange()<CR>"
