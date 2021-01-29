# Oceanic-Next.vim

Oceanic-Next.vim is a neovim theme inspired by [Oceanic Next for Sublime](https://github.com/voronianski/oceanic-next-color-scheme).
It is not a direct port, but uses some colors from the sublime theme, that are fitted to work with neovim and vim8.

For best results, it is suggested that you use the following syntax plugins.

- [yajs.vim](https://github.com/othree/yajs.vim)
- [html5.vim](https://github.com/othree/html5.vim)
- [yats.vim](https://github.com/HerringtonDarkholme/yats.vim/)

## Installation

All major plugin managers for vim/nvim are supported

 ```vim
<PACKAGE_MANAGER> 'mhartington/oceanic-next'
 ```

For vim, add the following to your `.vimrc`.

*(On Google Cloud Shell try to `set t_Co=256` instead of `set termguicolors` even though your vim version is 8)*

 ```viml
" Theme
  syntax enable
" for vim 7
  set t_Co=256

" for vim 8
  if (has("termguicolors"))
   set termguicolors
  endif

colorscheme OceanicNext
 ```

For neovim, add the following to your `.nvimrc`.


```viml
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext
```

There is an included theme for vim-airline, to use it, just change the airline theme to:

```
  let g:airline_theme='oceanicnext'
```

There is a light mode, but it still needs some work.
Currently, light mode has issues with cursor, need to tweak the colors a bit for that.
Also, the included airline theme could use some work in light mode. Right now it is the exact same as the dark version, I'd like to tweak this a bit.
If anyone would like to contribute, I'd be happy to accept a Pull Request.

## Configuration

If your terminal and setup supports it, you can enable italics and bold fonts with the following setting

```viml
  syntax on
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
  colorscheme OceanicNext
```

If your terminal has transparancy, you can enable it in neovim by adding the
following lines to your init.vim **after** calling `colorscheme OceanicNext`:

```viml
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
```
Each line above disables the background for a given highlight group
(e.g., LineNr). You can choose which to disable. This will show your terminal's
background (whether or not it's transparent). For best results, use an Oceanic
Next color scheme in your terminal.

## Screenshot

Base colors used in the theme.

![](https://raw.githubusercontent.com/voronianski/oceanic-next-theme/master/colors.png)

_neovim_

![](https://raw.githubusercontent.com/mhartington/oceanic-next/master/oceanic-next-dark.nvim.png)

Shown here with [vim-devicons](https://github.com/ryanoasis/vim-devicons)

