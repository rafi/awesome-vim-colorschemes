# Deep Space
An intergalactically friendly color scheme based off of [Hybrid](https://github.com/w0ng/vim-hybrid).

![screenshot](http://i.imgur.com/Q86eL6v.png)

## Installation
**NOTE:** This color scheme requires a terminal that supports true colors!

Install this color scheme using your preferred Vim plugin manager, then add the
following to your (n)vim configuration file:
```vim
set background=dark
set termguicolors
colorscheme deep-space
```

### Options
If your terminal supports italics, add:
```vim
let g:deepspace_italics=1
```

### Vim Airline
To use the included [vim-airline](https://github.com/vim-airline/vim-airline) theme:
```vim
let g:airline_theme='deep_space'
```

### Vim Lightline
To use the included [lightline.vim](https://github.com/itchyny/lightline.vim) theme:
```vim
let g:lightline = {
      \ 'colorscheme': 'deepspace',
      \ }
```

