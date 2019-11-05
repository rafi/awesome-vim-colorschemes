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
- [Customize](#customize)
  - [Font styles](#font-styles)
  - [Overrides colors](#overrides-colors)
- [Why i have to install other plugins](#why-i-have-to-install-other-plugins)
- [License](#license)

## Installation

You can install purify easily if you are using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'kyoz/purify', { 'rtp': 'vim' }
```

**Note**: Other vim plugin manager have similar installation, just remember `rtp` option

Then add this to your vim config file:

```vim
syntax on " This is required
colorscheme purify
```

**Note**: All customize option should be placed before you call `colorscheme purify`. If not, it'll not have any effects.

## Languages and Filetypes Support

Purify support consistent color syntax for almost all common languages and file types (base on vim's [runtime syntax](https://github.com/vim/vim/tree/master/runtime/syntax)):

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

By default, without any configuration, purify auto support consistent colors for:

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

### Overrides colors

You can overrides purify's colors if there's some colors you don't like:

```
let g:purify_override_colors = {
    \ 'pink':  { 'gui': '#FF87FF', 'cterm': '213' },
    \ 'green': { 'gui': '#5FD700', 'cterm': '76' }
\ }
```

## Why i have to install other plugins

- Purify is only aim for colorscheme, i'v tried my best to make purify colorscheme is the same is all languages support by vim, nvim.

- But for new languages, frameworks... you have to install other plugins to have correct syntax, I'll tried my best to support plugins that have good syntax for new languages, frameworks like React, Vue...

## Lisence
MIT © [Kyoz](mailto:banminkyoz@gmail.com)
