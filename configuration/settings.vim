filetype plugin indent on
syntax on

let mapleader = ','

" Unite
let g:unite_source_history_yank_enable = 1
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --line-numbers --nogroup -S -C4'
let g:unite_source_grep_recursive_opt = ''

" vim-go {{{
" Set path to Go and go binary directory
let $GOPATH = expand("~/Workspace/Go")
let $PATH = $PATH.":".$GOPATH."/bin"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_textobj_enabled = 1
let g:go_fmt_command = "goimports"
" end vim-go }}}

" Unite {{{
call unite#filters#sorter_default#use(['sorter_selecta'])

call unite#custom#profile('default,files', 'context', {
            \   'start_insert': 1,
            \   'winheight': 10,
            \   'direction': 'dynamicbottom',
            \   'prompt': ' > ',
            \   'auto_resize': 0,
            \   'vertical': 0,
            \   'prompt_direction': 'top',
            \   'silent': 1,
            \ })

call unite#custom#profile('outline', 'context', {
            \   'start_insert': 1,
            \   'winwidth': 10,
            \   'direction': 'dynamictop',
            \   'prompt': ' > ',
            \   'prompt_direction': 'below',
            \   'auto_resize': 0,
            \   'toggle': 1,
            \   'silent': 1,
            \   'vertical': 0,
            \ })
" }}}

" VimFiler {{{
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_tree_indentation = 2
let g:vimfiler_tree_leaf_icon = ''
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_readonly_file_icon = '✗'
let g:vimfiler_marked_file_icon = '⌇'
let g:vimfiler_expand_jump_to_first_child = 0
let g:vimfiler_no_default_key_mappings = 1

call vimfiler#custom#profile('vimfiler', 'context', {
            \ 'explorer' : 1,
            \ 'winwidth' : 30,
            \ 'winminwidth' : 30,
            \ 'toggle' : 1,
            \ 'columns' : '',
            \ 'explorer_columns' : '',
            \ 'status' : 1,
            \ 'safe' : 0,
            \ 'force_hide': 1,
            \ 'split' : 1,
            \ 'fnamewidth': 0,
            \ 'split_action': 'left',
            \ })
" }}}

" Buftabline
let g:buftabline_numbers = 2
let g:buftabline_indicators = 1
let buftabline_separator = 1

" One colorscheme
let g:one_allow_italics = 1
