" {{{ COMMANDS
command! -nargs=0 -range CheckSwitch  :<line1>,<line2>call markdown_checkswitch#switch()
" }}}

" {{{ OPTIONS
if !exists('g:md_checkswitch_style')
  let g:md_checkswitch_style = 'cycle'  " or 'toggle'
endif
" }}}

" {{{ DEFAULT MAPPINGS
if !exists("g:md_checkswitch_default_mappings_off") || !g:md_checkswitch_default_mappings_off
  nnoremap <silent> <A-c> :call markdown_checkswitch#switch()<CR>
  vnoremap <silent> <A-c> :call markdown_checkswitch#switch()<CR>gv
endif
" }}}

