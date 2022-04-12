# vim-markdown-checkswitch 

Checkbox status switcher for Markdown list items.

```vim
" Switch checkbox status for line, range, or visual selection
CheckMarkSwitch 

" Cycle between NO checkbox, empty, and ticked checkboxes Or toggle between empty and ticked checkboxes
let g:checkmark_switch_style = 'cycle'  " or 'toggle'

" Default mappings (disable with `let g:checkmark_default_mappings=0`)
nnoremap <silent> <A-c> :CheckMarkSwitch<cr>
vnoremap <silent> <A-c> :CheckMarkSwitch<cr>gv
```
