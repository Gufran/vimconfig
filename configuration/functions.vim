function! ListTodo() abort
  let entries = []
  for cmd in ['git grep -n -e TODO -e FIXME -e XXX 2> /dev/null',
            \ 'grep -rn -e TODO -e FIXME -e XXX * 2> /dev/null']
    let lines = split(system(cmd), '\n')
    if v:shell_error != 0 | continue | endif
    for line in lines
      let [fname, lno, text] = matchlist(line, '^\([^:]*\):\([^:]*\):\(.*\)')[1:3]
      call add(entries, { 'filename': fname, 'lnum': lno, 'text': text })
    endfor
    break
  endfor

  if !empty(entries)
    call setqflist(entries)
    copen
  endif
endfunction

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
