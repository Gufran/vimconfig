" Mappings

" Jump over wrapped lines (God forbid I ever need this)
nnoremap j gj
nnoremap k gk

" Split the buffer
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Dont lose the selection while indenting
vnoremap < <gv
vnoremap > >gv

" Replace selection when pasting in visual selection mode
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

map <space> /
map <leader>c :nohl<CR>
map <leader>d :Bdelete<CR>
map <leader>n :bn<CR>
map <c-r> :CtrlPBuffer<CR>

" Split movement
map <c-l> <c-w>l
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k

map <leader><F2> :call RenameFile()<cr>
map <leader>k :NERDTreeToggle<CR>
nnoremap <F5> :GundoToggle<CR>
noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" NERDCommenter
map \\ <Plug>NERDCommenterToggle<CR>
vmap \ <Plug>NERDCommenterToggle<CR>"

" Tagbar
nmap <leader>t :TagbarToggle<CR><c-l>"

" Highlight current word
nnoremap <leader><F8> :call AutoHighlightToggle()<cr>

