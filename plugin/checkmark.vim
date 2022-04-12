" {{{ COMMANDS
command! -nargs=0 -range CheckMarkSwitch  :<line1>,<line2>call checkmark#switch()
" }}}

" {{{ OPTIONS
if !exists('g:checkmark_switch_style')
  let g:checkmark_switch_style = 'cycle'  " or 'toggle'
endif
" }}}

" {{{ DEFAULT MAPPINGS
let g:checkmark_default_mappings = 1

if exists('g:checkmark_default_mappings') || g:checkmark_default_mappings
  nnoremap <silent> <A-c> :call checkmark#switch()<CR>
  vnoremap <silent> <A-c> :call checkmark#switch()<CR>gv
endif
" }}}

