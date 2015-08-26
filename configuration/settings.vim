filetype plugin indent on
syntax on

let mapleader = ','

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
 
" Tagbar
let g:tagbar_ctags_bin = "/usr/local/bin/ctags"

" Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#max_keyword_width = 50
let g:neocomplete#enable_fuzzy_completion = 1

" Airline
let g:airline_theme = 'luna'

" Unite
let g:unite_source_history_yank_enable = 1
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --line-numbers --nogroup -S -C4'
let g:unite_source_grep_recursive_opt = ''

" vim-go {{{
" Set path to Go and go binary directory
let $GOPATH = expand("~/Workspace/Go")
let $PATH = $PATH.":".$GOPATH."/bin"

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

call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\   'winheight': 10,
\   'direction': 'dynamicbottom',
\   'prompt': ' > '
\ })
