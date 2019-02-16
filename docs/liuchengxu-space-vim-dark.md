space-vim-dark
==============
<a href="https://github.com/liuchengxu/space-vim"><img src="https://rawgit.com/liuchengxu/space-vim/master/assets/space-vim-badge.svg" alt="badge"></a>

Try the successor of space-vim-dark for light background support!

:tada: **>> [space-vim-theme](https://github.com/liuchengxu/space-vim-theme)**

dark                                                                                  | light
:----:                                                                                | :----:
![](https://raw.githubusercontent.com/liuchengxu/img/master/space-vim-theme/dark.png) | ![](https://raw.githubusercontent.com/liuchengxu/img/master/space-vim-theme/light.png)

-----------

Space-vim-dark colorscheme is derived from [spacemacs-dark-theme](https://github.com/nashamri/spacemacs-theme).

## Installation

Follow your favourite plugin manager's instruction, e.g., [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'liuchengxu/space-vim-dark'
```

**Notes:**

- If you want to enable italics in terminal:

    1. check if the current terminal is able to display italics correctly: `echo -e "\e[3mfoo\e[23m"]]"`, if the output is _`foo`_ , the terminal (-emulator) supports italics.

    2. If the terminal supports italics, put `hi Comment cterm=italic` after colorshcme command in your vimrc.

        ```vim
        colorscheme space-vim-dark
        hi Comment cterm=italic
        ```

- If you want to make the background transparent, override the related items in your vimrc:

    ```vim
    colorscheme space-vim-dark
    hi Normal     ctermbg=NONE guibg=NONE
    hi LineNr     ctermbg=NONE guibg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
    ```

    <p align="center"><img width="500" alt="transparent" src="https://user-images.githubusercontent.com/8850248/36429354-75870ba6-168d-11e8-939a-34956e3c24b9.png"></p>

- If you prefer the grey comment:

    ```vim
    colorscheme space-vim-dark
    hi Comment guifg=#5C6370 ctermfg=59
    ```
    <p align="center"><img width="500" alt="transparent" src="https://raw.githubusercontent.com/liuchengxu/img/master/space-vim-dark/grey-comment.png"></p>

## GUI or Terminal with true colors enabled

```vim
color space-vim-dark
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE
```

![screenshot](https://raw.githubusercontent.com/liuchengxu/img/master/space-vim/space-vim-gui.png)

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

## Credits

- Thanks to the great effort of [@axvr](https://github.com/axvr) . Now we have the Xresources port of space-vim-dark theme.

> To use this colour scheme for X based applications (e.g. Xterm, URxvt, etc.):
> 1. Copy all lines from this file which are not comments (comments are lines which begin with a `!`) into your `~/.Xresources` file.
> 2. Reload your configuration file with: `xrdb ~/.Xresources`.
