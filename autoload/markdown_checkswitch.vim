" {{{ SWITCH
function! markdown_checkswitch#switch()
let current_line = getline('.')
if match(current_line, '^\s*[*\-+] \[ \]') >= 0
  call setline('.', substitute(current_line, '^\(\s*[*\-+]\) \[ \]', '\1 [x]', ''))
  return
endif
if match(current_line, '^\s*[*\-+] \[x\]') >= 0
  if g:md_checkswitch_style == 'cycle'
    call setline('.', substitute(current_line, '^\(\s*[*\-+]\) \[x\]', '\1', ''))
  else
    call setline('.', substitute(current_line, '^\(\s*[*\-+]\) \[x\]', '\1 [ ]', ''))
  endif
  return
endif
if match(current_line, '^\s*[*\-+] \(\[[x ]\]\)\@!') >= 0
  if g:md_checkswitch_style == 'cycle'
    call setline('.', substitute(current_line, '^\(\s*[*\-+]\)', '\1 [ ]', ''))
  endif
  return
endif
if match(current_line, '^\s*#\{1,5}\s') >= 0
  call setline('.', substitute(current_line, '^\(\s*#\{1,5}\) \(.*$\)', '\1# \2', ''))
  return
endif
if match(current_line, '^\s*#\{6}\s') >= 0
  call setline('.', substitute(current_line, '^\(\s*\)#\{6} \(.*$\)', '\1# \2', ''))
  return
endif
endfunction
" }}}
