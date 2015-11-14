" Mappings

map  <F1> <NOP>
vmap <F1> <NOP>
imap <F1> <NOP>

" Jump over wrapped lines (God forbid I ever need this)
nnoremap j gj
nnoremap k gk

" Dont lose the selection while indenting
vnoremap < <gv
vnoremap > >gv

" Replace selection when pasting in visual selection mode
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

map <space> za
map <leader>c :nohl<CR>
map <leader>d :Bdelete<CR>
map <leader>n :bn<CR>

" Split movement
map <c-l> <c-w>l
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k

" Quickly toggle relative numbers
map <F8> :set relativenumber!<CR>

map <leader>k :NERDTreeTabsToggle<CR>
nnoremap <F5> :GundoToggle<CR>
noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Golang tag navigation with GoDef {{{
autocmd BufEnter *.go map <C-]> :GoDef<CR>
" }}}

" Unite {{{
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <C-p> :<C-u>Unite -no-split -buffer-name=files -toggle -start-insert buffer file_rec/async:!<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
" }}} Unite end

" Incsearch {{{
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" }}} Incsearch end
