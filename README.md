# vim-markdown-checkswitch

Slim, configurable checkbox status switcher for Markdown list items.<br> 

Serves as a good little addition to common vim-markdown-plugins like [preservim/vim-markdown][1].

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
" Default mapping <Alt-c>. For those who are familiar with Codiums 'Markdown All in One' plugin 
" (can be disabled with `let g:md_checkswitch_default_mappings_off=1`)
nnoremap <silent> <A-c> :CheckSwitch<cr>
vnoremap <silent> <A-c> :CheckSwitch<cr>gv
```

[1]: https://github.com/preservim/vim-markdown
