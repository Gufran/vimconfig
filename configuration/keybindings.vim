" Mappings

map  <F1> <NOP>
vmap <F1> <NOP>
imap <F1> <NOP>

nnoremap j gj
nnoremap k gk
nnoremap Y y$

" Dont lose the selection while indenting
vnoremap < <gv
vnoremap > >gv

" Write with root privileges
cmap w!! w !sudo tee > /dev/null %

" Replace selection when pasting in visual selection mode
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

map <space> za
map <leader>c :nohl<CR>
map <leader>d :Bdelete<CR>

" Split movement {{{
nmap <c-l> <c-w>l
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
" }}}

" keybindings in command line {{{
cnoremap        <C-b> <S-Left>
cnoremap        <C-f> <S-Right>
silent! exe "set <S-Left>=\<Esc>b"
silent! exe "set <S-Right>=\<Esc>f"
" }}}

" Bufsearch
nnoremap <leader>bs :cex []<BAR>bufdo vimgrepadd @@g %<BAR>cw<s-left><s-left><right>


" Quickly toggle relative numbers
map <F8> :set relativenumber!<CR>

nnoremap <F5> :GundoToggle<CR>
noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Unite {{{
call unite#filters#matcher_default#use(['matcher_fuzzy'])

if !has('nvim')
    nnoremap <C-p> :<C-u>Unite -no-split -buffer-name=files -toggle -start-insert buffer file_rec/async:!<cr>
endif

nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank -toggle history/yank<cr>
nnoremap <silent> <C-n> :Unite -profile-name=outline -toggle outline<CR>
" }}} Unite end

" Insert newline sensibly
nmap <CR> o<Esc>
imap <C-CR> <Esc>o

" Override default search functionalities in
" neovim with FZF
if has('nvim')
    nnoremap / :BLines<CR>
    nnoremap <M-/> :Lines<CR>
    nnoremap <C-p> :Files<CR>
    nnoremap <C-S-p> :Buffers<CR>
endif

" Find TODOs in project
command! Todo call ListTodo()
