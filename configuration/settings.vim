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

" PHP Complete
let g:phpcomplete_mappings = {
   \ 'jump_to_def': '<C-]>',
   \ 'jump_to_def_split': '<C-W><C-]>',
   \ 'jump_to_def_vsplit': '<C-W><C-\>',
   \}

" Buftabline
let g:buftabline_numbers = 2
let g:buftabline_indicators = 1
let buftabline_separator = 1

" Syntastic {{{
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_echo_current_error = 0

let g:syntastic_error_symbol = "✘"
let g:syntastic_style_error_symbol = "✗"
let g:syntastic_warning_symbol = "⁉︎"
let g:syntastic_style_warning_symbol = "⁈"

let g:syntastic_enable_highlighting = 1
let g:syntastic_always_populate_loc_list = 1
" }}}

let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

" Startify {{{
let g:startify_session_dir = '~/.vim/session'
let g:startify_list_order = ['bookmarks', 'sessions', 'files', 'dir', 'commands']
let g:startify_bookmarks = [ '~/.vim', '~/.zshrc' ]
let g:startify_files_number = 5
let g:startify_session_persistence = 1
let g:startify_change_to_dir = 1
let g:startify_fortune_use_unicode = 1
let g:startify_padding_left = 5
let g:startify_custom_header = startify#fortune#cowsay()
" }}}


let g:unite_source_menu_menus = {
	\  'linux' : {
	\      'description'       : '                    Fire Linux tools                             ⌘ <C-m>',
	\      'command_candidates': [
	\        ['▷ column                         run text through `column` utility', '!column -t'],
	\        ['▷ git diff                       show interactive git diff in a split window', 'Gdiff'],
	\        ['▷ git commit                     commit changes in git repository', 'Gcommit'],
	\        ['▷ git log                        show interactive git log in a split window', 'exe "silent Glog | Unite quickfix"'],
	\        ['▷ git blame                      show interactive git blame in a split window', 'Gblame'],
	\        ['▷ git stage                      selectively stage chages to be committed', 'Gwrite'],
	\        ['▷ git stage hunk                 stage current hunk identified by cursor position', 'GitGutterStageHunk'],
	\        ['▷ git unstage hunk               unstage current hunk identified by cursor position', 'GitGutterRevertHunk'],
	\        ['▷ git toggle diff                toggle diff highlighting', 'GitGutterLineHighlightsToggle'],
	\        ['▷ git checkout                   checkout a commit or branch', 'Gread'],
	\        ['▷ git rm                         remove changes or untracked files', 'Gremove'],
	\        ['▷ git mv                         move file to another location and start tracking', 'exe "Gmove " input("destination: ")'],
	\        ['▷ git push                       push committed changes to a remote', 'Git! push'],
	\        ['▷ git pull                       pull changes from a remote', 'Git! pull'],
	\        ['▷ git prompt                     start an interactive git shell', 'exe "Git! " input("git command: ")'],
    \    ],
	\  },
	\}

