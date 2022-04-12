# vim-checkmark

Slim checkbox status switcher for Markdown list items.

## Preview

![](preview.gif)

## Installation

Using a plugin manger like [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "tenxsoydev/vim-checkmark",
  ft = {
    "markdown",
  },
}
```

## Commands

```vim
" Switch checkbox status for line, range, or visual selection
:CheckMarkSwitch
```

## Options

```vim
" Cycle between NO checkbox, empty, and ticked checkboxes or toggle between empty and ticked checkboxes
let g:checkmark_switch_style = 'cycle'  " or 'toggle'
```

## Mappings

```vim
" Default mappings (can be disabled with `let g:checkmark_default_mappings_off=0`)
nnoremap <silent> <A-c> :CheckMarkSwitch<cr>
vnoremap <silent> <A-c> :CheckMarkSwitch<cr>gv
```
