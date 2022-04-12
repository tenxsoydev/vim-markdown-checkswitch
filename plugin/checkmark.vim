" {{{ COMMANDS
command! -nargs=0 -range CheckMarkSwitch  :<line1>,<line2>call checkmark#switch()
" }}}

" {{{ OPTIONS
if !exists('g:checkmark_switch_style')
  let g:checkmark_switch_style = 'cycle'  " or 'toggle'
endif
" }}}

" {{{ DEFAULT MAPPINGS
if !exists("g:checkmark_default_mappings_off") || !g:checkmark_default_mappings_off
  nnoremap <silent> <A-c> :call checkmark#switch()<CR>
  vnoremap <silent> <A-c> :call checkmark#switch()<CR>gv
endif
" }}}

