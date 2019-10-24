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

xmap <silent> <C-\> <Plug>Commentary
nmap <silent> <C-\> <Plug>Commentary
omap <silent> <C-\> <Plug>Commentary

vmap <silent> <leader>j :!python -m json.tool<CR>

nmap <C-l> <c-w>l
nmap <C-h> <c-w>h
nmap <C-j> <c-w>j
nmap <C-k> <c-w>k

nnoremap <Tab> :<C-U>call SwitchBufTab(1)<CR>
nnoremap <S-Tab> :<C-U>call SwitchBufTab(0)<CR>

noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Unite {{{
call unite#filters#matcher_default#use(['matcher_fuzzy'])

nnoremap <silent> <leader>y :<C-u>Unite -no-split -buffer-name=yank -toggle history/yank<cr>
nnoremap <silent> <C-n>     :<C-u>Unite -profile-name=outline -toggle outline<CR>
" }}} Unite end

nnoremap <silent> <leader>k :VimFiler<CR>

" Insert newline sensibly
nmap <CR> o<Esc>
imap <C-CR> <Esc>o

" FZF {{{
nmap <C-p> :Files<CR>
nmap <C-y> :Buffers<CR>
nmap <C-m> :Lines<CR>
" }}} FZF


" Calculations {{{
nnoremap Q 0yt=A<C-r>=<C-r>"<CR><ESC>
" }}} Calculations
