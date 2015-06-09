filetype plugin indent on
syntax on

let mapleader = ','
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:php_refactor_command='php ' . expand('~/.composer/vendor/bin/refactor')

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<C-d>'
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_start_word_key='g<C-d>'
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Configure YouCompleteMe and UltiSnip with supertab.
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
 
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" PIV
let g:DisableAutoPHPFolding=1

" Tagbar
let g:tagbar_ctags_bin = "/usr/local/bin/ctags"

" tagbar-phpctags
let g:tagbar_phpctags_bin = expand("~/.vim/bundle/tagbar-phpctags.vim/build/phpctags-0.5.1/phpctags")
let g:tagbar_phpctags_memory_limit = '512M'

" Composer location for phpcomplete
let g:phpcomplete_index_composer_command = "php " . substitute(system("which composer"), "\n\+$", "", "")

" Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1

" Bookmarks - Change the color of bookmark icon
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
" Change the bookmark icon
let g:bookmark_sign = '♥'
let g:bookmark_manage_per_buffer = 1
let g:bookmark_auto_save_file = expand('~/.vim/bookmarks')

" Integrate with Unite
call unite#custom#profile('source/vim_bookmarks', 'context', {
    \   'winheight': 13,
    \   'direction': 'botright',
    \   'start_insert': 1,
    \   'keep_focus': 0,
    \   'no_quit': 0,
    \ })
