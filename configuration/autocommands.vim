" automatically create parent dirs on write buffer
autocmd BufWritePre * if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h")) | execute "silent! !mkdir -p %:h" | redraw! | endif

" Relative numbers in command mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

autocmd StdinReadPre * let s:std_in=1

" Enable syntax highlighting for config files
autocmd FileType vim set syntax=vim

" Open the doc or definition in vertical split
autocmd FileType go nmap <buffer> K <Plug>(go-doc-vertical)
autocmd FileType go nmap <buffer> <leader>K <Plug>(go-def-vertical)
autocmd FileType go nmap <buffer> <C-G> :GoInfo<CR>

" Golang tag navigation with GoDef
autocmd FileType go map <buffer> <C-]> :GoDef<CR>

" Format markdown tables using tab in normal mode
autocmd FileType markdown setlocal textwidth=100 colorcolumn=101 nowrap

" PHP Autocompleter
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

" VimFiler keybindings {{{
autocmd FileType vimfiler nmap <silent> <buffer>        a        <Plug>(vimfiler_new_file)
autocmd FileType vimfiler nmap <silent> <buffer>        d        <Plug>(vimfiler_delete_file)
autocmd FileType vimfiler nmap <silent> <buffer>        m        <Plug>(vimfiler_rename_file)
autocmd FileType vimfiler nmap <silent> <buffer>        <Space>  <Plug>(vimfiler_toggle_mark_current_line)
autocmd FileType vimfiler nmap <silent> <buffer>        c        <Plug>(vimfiler_copy_file)
autocmd FileType vimfiler nmap <silent> <buffer>        o        <Plug>(vimfiler_expand_or_edit)
autocmd FileType vimfiler nmap <silent> <buffer>        r        <Plug>(vimfiler_redraw_screen)
autocmd FileType vimfiler nmap <silent> <buffer>        ?        <Plug>(vimfiler_help)
autocmd FileType vimfiler nmap <silent> <buffer>        gg       <Plug>(vimfiler_cursor_top)
autocmd FileType vimfiler nmap <silent> <buffer>        I        <Plug>(vimfiler_toggle_visible_ignore_files)
autocmd FileType vimfiler nmap <silent> <buffer>        <C-g>    <Plug>(vimfiler_print_filename)
autocmd FileType vimfiler nmap <silent> <buffer>        <C-p>    <Plug>(vimfiler_find)
autocmd FileType vimfiler vmap <silent> <buffer>        <Space>  <Plug>(vimfiler_toggle_mark_selected_lines)
autocmd FileType vimfiler nmap <silent> <buffer> <expr> s        vimfiler#do_switch_action('vsplit')
autocmd FileType vimfiler nmap <silent> <buffer> <expr> i        vimfiler#do_switch_action('split')
" }}} End VimFiler keybindings
