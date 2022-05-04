# Vim Purify
> Purify dark theme for vim (neovim)

<p align="center">
  <img src="https://i.imgur.com/ej5vWWS.png" width="900px">
</p>

## Contents

- [Installation](#installation)
- [Languages and Filetypes Support](#languages-and-filetypes-support)
- [Plugins Support](#plugins-support)
  - [Built-in](#built-in)
  - [Airline](#airline)
  - [Lightline](#lightline)
  - [Gitsigns.nvim](#gitsigns.nvim)
- [Customize](#customize)
  - [Font styles](#font-styles)
  - [Background](#background)
  - [Overrides colors](#overrides-colors)
- [Why i have to install other plugins](#why-i-have-to-install-other-plugins)
- [License](#license)

## Installation

You can install purify easily if you are using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'kyoz/purify', { 'rtp': 'vim' }
```

**Note**: Other vim plugin manager have similar installation, just remember about `rtp` option

Then add this to your vim config file:

```vim
syntax on " This is required
colorscheme purify
```

**Note**: All custom options should be placed before you call `colorscheme purify`. If not, it'll not have any effect.

## Languages and Filetypes Support

Purify supports consistent color syntax for almost all common languages and file types (based on vim's [runtime syntax](https://github.com/vim/vim/tree/master/runtime/syntax)):

- [x] Html, Html5...
- [x] Css, Scss, Sass, Less
- [x] Json, Xml, Markdown
- [x] Javascript, Typescript (Require [typescript-vim](https://github.com/leafgarland/typescript-vim)'s syntax)
- [x] Python, Go
- [x] C, C_++
- [x] All [languages](https://github.com/vim/vim/tree/master/runtime/syntax) that vim support til now

## Frameworks support

- [x] React (Require [vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty))

## Plugins Support

### Built-in:

By default, without any configuration, purify auto-supports consistent colors for:

- [x] [NERDTree](https://github.com/scrooloose/nerdtree)
- [x] [fzf.vim](https://github.com/junegunn/fzf.vim)
- [x] [EasyMotion](https://github.com/easymotion/vim-easymotion)
- [x] Other plugins that use highlight syntax that define in [w18](http://vimdoc.sourceforge.net/htmldoc/syntax.html#syntax) and [highlight-group](http://vimdoc.sourceforge.net/htmldoc/options.html#'highlight')

### Airline

If you are using [vim-airline](https://github.com/vim-airline/vim-airline):

```
let g:airline_theme='purify'
```

### Lightline

If you are using [lightline.vim](https://github.com/itchyny/lightline.vim):

```
let g:lightline = {
      \ 'colorscheme': 'purify',
      \ }
```

### Gitsigns.nvim

You don't have to do anything, just install [Gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) correctly


## Customize

### Font styles

By default, Purify will support for italic, bold, underline... You can disable them if you want:

```
let g:purify_bold = 0        " default: 1
let g:purify_italic = 0      " default: 1
let g:purify_underline = 0   " default: 1
let g:purify_undercurl = 0   " default: 1
let g:purify_inverse = 0     " default: 1
```

**Note**: Those style formats only working if your terminal, your settings, your fonts support em.

### Background

By default, Vim using your terminal background color as the background colors.

If you are using GUI version of vim/neovim, it'll have Purify Background (#252834), but if you are using terminal vim or neovim, you have to choose and set the background yourself:

```
colorscheme purify "--------------------------------- Set onedark theme
hi Normal guibg=#252834 ctermbg=234 "---- Place this after you set the colorscheme
```

P/s: If you are nvim-qt, you may need set this to your `ginit.vim`

```
set background=dark
```

### Override colors

You can override purify's colors if there are some colors you don't like:

```
let g:purify_override_colors = {
    \ 'pink':  { 'gui': '#FF87FF', 'cterm': '213' },
    \ 'green': { 'gui': '#5FD700', 'cterm': '76' }
\ }
```

## Why I have to install other plugins

- Purify is only aim for colorscheme, I've tried my best to make purify colorscheme look the same for all languages supported by vim, neovim.

- But for new languages, frameworks... you have to install other plugins to have correct syntax, I'll try my best to support plugins that have a good syntax for new languages, frameworks like React, Vue...

## Lisence
MIT © [Kyoz](mailto:banminkyoz@gmail.com)
