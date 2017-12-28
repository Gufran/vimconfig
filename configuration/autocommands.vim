augroup misc
    autocmd!
    autocmd BufWritePre * :call MkDirNX()
    autocmd StdinReadPre * let s:std_in=1
augroup end

augroup syntax
    autocmd!
    autocmd BufRead,BufNewFile *.dockerfile setfiletype dockerfile
augroup end

augroup vim
    autocmd!
    autocmd FileType vim set syntax=vim
augroup end

augroup golang
    autocmd!
    autocmd FileType go nmap <buffer> K <Plug>(go-doc-vertical)
    autocmd FileType go nmap <buffer> <C-G> :GoInfo<CR>
    autocmd FileType go nmap <buffer> <S-F6> <Plug>(go-rename)
augroup end

augroup markdown autocmd!
    autocmd FileType markdown setlocal textwidth=100 colorcolumn=101 nowrap
augroup end

augroup vimfiler
    autocmd!
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
augroup end

augroup python
    autocmd!
    autocmd FileType python set tabstop=4
    autocmd FileType python set softtabstop=4
    autocmd FileType python set shiftwidth=4
    autocmd FileType python set textwidth=120
    autocmd FileType python set foldmethod=indent
    autocmd FileType python nmap <silent> <C-]> :YcmCompleter GoToDeclaration<CR>
augroup end

augroup todo
    autocmd!
    autocmd FileType todo set tabstop=3
    autocmd FileType todo set softtabstop=3
    autocmd FileType todo set shiftwidth=3
    autocmd FileType todo set foldenable
    autocmd FileType todo set foldmethod=expr
    autocmd FileType todo set foldcolumn=4
    autocmd FileType todo set foldexpr=FoldLevel(getline(v:lnum),getline(v:lnum+1))

    autocmd FileType todo command -range -nargs=0 ToggleDone :<line1>,<line2>call ToggleTaskDone()
    autocmd FileType todo nnoremap md :ToggleDone<CR>

    autocmd FileType todo setlocal conceallevel=2
    autocmd FileType todo syntax match Comment               /^=.*=$/
    autocmd FileType todo syntax match SpecialComment        /\s\@<=.*#done.*/
    autocmd FileType todo syntax match String                /@\w\+/
    autocmd FileType todo syntax match Type                  /^\w.*/
    autocmd FileType todo syntax match ItemExpandLine        /\s\@<=\s\(\s\w\)\@=/ conceal cchar=|
    autocmd FileType todo syntax match ItemParentExpandLine  /\(^\s\)\@<=\s\(\s\+\w\)\@=/ conceal cchar=|
augroup end

