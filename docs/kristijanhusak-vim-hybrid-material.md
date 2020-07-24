# vim-hybrid-material
Material color scheme for Vim based on [w0ng/vim-hybrid](https://github.com/w0ng/vim-hybrid) color scheme.

It includes **2 color schemes**:
* [Hybrid material](#hybrid-material)
* [Hybrid reverse](#hybrid-reverse)

Both schemes are almost similar to [w0ng/vim-hybrid](https://github.com/w0ng/vim-hybrid), just some colors are switched (Purple with red), to look more like tomorrow-night.

### Installation
*  [Pathogen](https://github.com/tpope/vim-pathogen)
  *  `git clone https://github.com/kristijanhusak/vim-hybrid-material ~/.vim/bundle/vim-hybrid-material`
  *  Remember to run `:Helptags` to generate help tags
*  [NeoBundle](https://github.com/Shougo/neobundle.vim)
  *  `NeoBundle 'kristijanhusak/vim-hybrid-material'`
*  [Vundle](https://github.com/gmarik/vundle)
  *  `Plugin 'kristijanhusak/vim-hybrid-material'`
*  [Plug](https://github.com/junegunn/vim-plug)
  *  `Plug 'kristijanhusak/vim-hybrid-material'`
*  manual
  *  copy all of the files from `colors` directory into your `~/.vim/colors` directory

### Options

If you would like some of the code to be bolded, like functions and language controls, add this option to vimrc:

```vimL
let g:enable_bold_font = 1
```

If you want comments to be in italic, also add this:
```vimL
let g:enable_italic_font = 1
```

To use transparent background, add this option:
```vimL
let g:hybrid_transparent_background = 1
```

**Note**: Options must be set before `colorscheme hybrid_material` statement.

#### Hybrid Material
Based on [equinusocio/material-theme](https://github.com/equinusocio/material-theme).

![hybrid-material](https://cloud.githubusercontent.com/assets/1782860/8340203/483e81f2-1abd-11e5-8fc6-b1ca5c646404.png)

True colors are a requirement for this color scheme to work properly. To enable this, place the following in your `~/.vimrc` or `~/.config/nvim/init.vim` file:

```vim
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
```

##### GVim/MacVim
Only add this to .vimrc after installation:

```vimL
set background=dark
colorscheme hybrid_material
```

##### Vim
For Vim version check folder [base16-material](https://github.com/kristijanhusak/vim-hybrid-material/tree/master/base16-material).

#### Hybrid Reverse
Original [w0ng/vim-hybrid](https://github.com/w0ng/vim-hybrid), with only colors switched.

![hybrid-reverse](https://cloud.githubusercontent.com/assets/1782860/8340291/e046a042-1abd-11e5-82fd-b323ec5fd80c.png)

##### Gvim/MacVim/Vim
```vimL
set background=dark
colorscheme hybrid_reverse
```

### Light version
Light version is also included, just set background to light instead of dark:
```vimL
set background=light
colorscheme hybrid_material
```


### Airline
If you are using [vim-airline](https://github.com/bling/vim-airline) plugin, there is a hybrid theme that suites well with this color scheme (Used on screenshots).
```vimL
let g:airline_theme = "hybrid"
```

Font on screenshot: [Inconsolata](https://github.com/powerline/fonts/tree/master/Inconsolata)


### Thanks to
* [w0ng/vim-hybrid](https://github.com/w0ng/vim-hybrid)
* [equinusocio/material-theme](https://github.com/equinusocio/material-theme)
* [@seanwash](https://github.com/seanwash) for adding support for Vim
