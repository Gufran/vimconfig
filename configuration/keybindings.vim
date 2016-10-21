map  <F1> <NOP>
vmap <F1> <NOP>
imap <F1> <NOP>

nnoremap j gj
nnoremap k gk
nnoremap Y y$

vnoremap < <gv
vnoremap > >gv

cmap w!! w !sudo tee > /dev/null %

" Replace selection when pasting in visual selection mode
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

map <space> za
map <leader>c :nohl<CR>
map <leader>d :Bdelete<CR>
map <leader>D :Bdelete!<CR>

nmap <C-l> <c-w>l
nmap <C-h> <c-w>h
nmap <C-j> <c-w>j
nmap <C-k> <c-w>k

" keybindings in command line {{{
cnoremap        <C-b> <S-Left>
cnoremap        <C-f> <S-Right>
silent! exe "set <S-Left>=\<Esc>b"
silent! exe "set <S-Right>=\<Esc>f"
" }}}

" Buffer search
nnoremap <leader>bs :cex []<BAR>bufdo vimgrepadd @@g %<BAR>cw<s-left><s-left><right>

noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Unite {{{
call unite#filters#matcher_default#use(['matcher_fuzzy'])

if !has('nvim')
    nnoremap <C-p> :<C-u>Unite -no-split -buffer-name=files -toggle -start-insert buffer file_rec/async:!<cr>
endif

nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank -toggle history/yank<cr>
nnoremap <silent> <C-n> :Tagbar<CR>
" }}} Unite end

nnoremap <silent> <leader>k :VimFiler<CR>

" Insert newline sensibly
nmap <CR> o<Esc>
imap <C-CR> <Esc>o

" Find TODOs in project
command! Todo call ListTodo()
