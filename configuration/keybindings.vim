" Mappings

map  <F1> <NOP>
vmap <F1> <NOP>
imap <F1> <NOP>

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

" Split movement
nmap <c-l> <c-w>l
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k

" Quickly toggle relative numbers
map <F8> :set relativenumber!<CR>

nnoremap <F5> :GundoToggle<CR>
noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Unite {{{
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <C-p> :<C-u>Unite -no-split -buffer-name=files -toggle -start-insert buffer file_rec/async:!<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank -toggle history/yank<cr>
nnoremap <silent> <C-n> :Unite -profile-name=outline -toggle outline<CR>
nnoremap <silent> <C-m> :Unite -silent -start-insert -toggle menu:git<CR>
" }}} Unite end

