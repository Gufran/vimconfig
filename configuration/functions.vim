" Switch to buffer tabs
function! SwitchBufTab(ltr) range
  if v:count == 0
    let l:cmd = ':' . ((a:ltr == 1) ? "bnext" : "bprevious")
  else
    let l:cmd = ":exe 'b'.get(buftabline#user_buffers(), " . (v:count1 - 1) . ", '')"
  endif

  exe l:cmd
endfunction

" Find longest line length in buffer
function! LineMaxLen()
  let maxlength = 0
  let linenumber = 1

  while linenumber <= line("$")
    exe ":".linenumber
    let linelength = virtcol("$")

    if maxlength < linelength
      let maxlength = linelength
    endif

    let linenumber = linenumber+1
  endwhile

  return maxlength
endfunction

" Make directory before saving file
function! MkDirNX()
    if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h"))
        execute "silent! !mkdir -p %:h" 
        redraw! 
    endif
endfunction

" Run a system command and pass the visually selected
" text over stdin. Selected text is then replaced with
" output of the command
function! RunSysCom(com) range abort
    let fline = a:firstline
    let lline = a:lastline

    let stdin = join(getline(a:firstline, a:lastline), "\n") . "\n"
    let result = system(a:com, stdin)

    execute fline . ',' . lline . 'delete'

    call append(fline - 1, split(result, '\n'))
    execute fline
endfunction

" Remove leading and trailing whitespaces
function! Trim() range abort
    let fline = a:firstline
    let lline = a:lastline

    let content = join(getline(a:firstline, a:lastline), "\n") . "\n"
    let result = substitute(content, '\(^\s\+\)\|\(\s\+$\)', '', 'g')

    call append(fline - 1, split(result, '\n'))
    execute fline
endfunction

function! FoldLevel(l, ln)
    if a:l =~ '^=.*=$'
        return '>1'
    elseif a:l =~ '^$' && a:ln =~ '^=.*=$'
        return 0
    elseif a:l =~ '^\w.*$'
        return 2
    elseif a:l =~ '^\s.*$'
        return 3
    elseif a:l =~ '^vim:\s.*'
        return 0
    else
        return 1
    endif
endfunction

function! ToggleTaskDone() range abort
    for lnum in range(a:firstline, a:lastline)
        if getline(lnum) =~ '\s#done'
            call setline(lnum, substitute(getline(lnum), '\s#done', '', ''))
        else
            call setline(lnum, substitute(getline(lnum), '$', ' #done', ''))
        endif
    endfor
endfunction
