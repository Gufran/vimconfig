filetype plugin indent on
syntax on

let mapleader = ','

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

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

" Integrate with Unite
call unite#custom#profile('source/vim_bookmarks', 'context', {
    \   'winheight': 13,
    \   'direction': 'botright',
    \   'start_insert': 1,
    \   'keep_focus': 0,
    \   'no_quit': 0,
    \ })

" Airline
let g:airline_theme = 'luna'

" vim-go {{{
" Set path to Go and go binary directory
let $GOPATH = expand("~/Workspace/Go")
let $PATH = $PATH.":".$GOPATH."/bin"

" Open the doc or definition in vertical split
au FileType go nmap K <Plug>(go-doc-vertical)
au FileType go nmap <leader>K <Plug>(go-def-vertical)

" Rename identifier under cursor
au FileType go nmap <S-F6> <Plug>(go-rename)

" Highlightings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_build_constraints = 0
let g:go_textobj_enabled = 1

" Auto imports
let g:go_fmt_command = "goimports"
" end vim-go }}}

" CommandT settings {{{
let g:CommandTMaxHeight = 10
let g:CommandTTraverseSCM = "pwd"
let g:CommandTMatchWindowReverse = 1

" }}}
