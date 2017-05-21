space-vim-dark
==============
<a href="https://github.com/liuchengxu/space-vim"><img src="https://rawgit.com/liuchengxu/space-vim/master/assets/space-vim-badge.svg" alt="badge"></a>

Space-vim-dark colorscheme is derived from [spacemacs-dark-theme](https://github.com/nashamri/spacemacs-theme).

**Notes:**

If you want to enable italics in terminal:

1. check if the current terminal is able to display italics correctly: `echo -e "\e[3mfoo\e[23m"]]"`, if the output is _`foo`_ , the terminal (-emulator) supports italics.

2. If the terminal supports italics, put `hi Comment cterm=italic` after colorshcme command.

    ```vim
    colorscheme space-vim-dark
    hi Comment cterm=italic
    ```

## GUI or Terminal with true colors enabled

![screenshot](https://raw.githubusercontent.com/liuchengxu/img/master/space-vim/space-vim-gui.png)
(Terminal with `set termguicolors`)

## Cterm (256 colors)

![screenshot](https://raw.githubusercontent.com/liuchengxu/img/master/space-vim/space-vim-cterm.png)

### Change background color

![screenshot](https://raw.githubusercontent.com/liuchengxu/img/master/space-vim-dark/space-vim-dark-bg-list.png)

```vim
"   Range:   233 (darkest) ~ 238 (lightest)
"   Default: 235
let g:space_vim_dark_background = 234
color space-vim-dark
```
