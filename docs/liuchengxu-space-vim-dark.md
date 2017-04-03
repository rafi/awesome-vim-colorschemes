space-vim-dark
==============

Space-vim-dark colorscheme is derived from [spacemacs-dark-theme](https://github.com/nashamri/spacemacs-theme).

**Notes:**

If you want to enable italics in terminal:

1. check if the current terminal is able to display italics correctly: `echo -e "\e[3mfoo\e[23m"]]"`, if the output is _`foo`_ , the terminal (-emulator) supports italics.

2. If the terminal supports italics, put `hi Comment cterm=italic` after colorshcme command.

    ```vim
    colorscheme space-vim-dark
    hi Comment cterm=italic
    ```

Terminal with `set termguicolors`:

![screenshot](https://github.com/liuchengxu/space-vim-dark/blob/screenshots/screenshot3.png?raw=true)

![screenshot](https://github.com/liuchengxu/space-vim-dark/blob/screenshots/screenshot2.png?raw=true)

![screenshot](https://github.com/liuchengxu/space-vim-dark/blob/screenshots/screenshot1.png?raw=true)

Terminal with 256 colors:

![screenshot](https://github.com/liuchengxu/space-vim/blob/gh-pages/docs/img/screenshot.png?raw=true)
