# vim-markdown-checkswitch

Slim checkbox status switcher for Markdown list items.<br> 
Serves as a good little addition for me to [preservim/vim-markdown](https://github.com/preservim/vim-markdown).

The cursor position stays unaffected while switching the checkbox status via shortcuts. 
Which was a small problem I have experienced with another plugin for this purpose. 


## Preview

![](preview.gif)

## Installation

Using a plugin manger like [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "tenxsoydev/vim-markdown-checkswitch",
  ft = {
    "markdown",
  },
}
```

## Commands

```vim
" Switch checkbox status for line, range, or visual selection
:CheckSwitch
```

## Options

```vim
" Cycle between NO checkbox, empty, and ticked checkboxes 
" or toggle between empty and ticked checkboxes
let g:md_checkswitch_style = 'cycle'  " or 'toggle'
```

## Mappings

```vim
" Default mapping Alt-c was inspired from VSCodes markdown plugin 
" (can be disabled with `let g:md_checkswitch_default_mappings_off=1`)
nnoremap <silent> <A-c> :CheckSwitch<cr>
vnoremap <silent> <A-c> :CheckSwitch<cr>gv
```
