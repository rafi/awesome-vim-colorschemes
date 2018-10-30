![Orbital](img/orbital.png)

Orbital colorscheme for Vim:

- Base16 theme for the standard 256-color palette of most terminals
- Terminal & GUI support
- Simple, clean code created with [RNB](https://gist.github.com/5cd2f4ec222805f49eca.git)
- Airline, Lightline & CtrlP support out-of-the-box

Screenshots
------------
Taken on minTTY with Office Code Pro font:

[![](img/orbital_vim_thumb.png)](img/orbital_vim.png)


Palette
--------
![orbital_palette](img/orbital_palette.png)

|  Hex  | Term |
|-------|-----:|
|#000000|     0|
|#262626|   235|
|#5f5f5f|    59|
|#949494|   246|
|#bcbcbc|   250|
|#e4e4e4|   254|
|#ffd7af|   223|
|#d7af87|   180|
|#af875f|   137|
|#5f87d7|    68|
|#5f87af|    67|
|#87afd7|   110|
|#5fafff|    75|
|#0087d7|    32|
|#005faf|    25|
|#0000d7|    20|
                
Installation
-------------
1. Install the bundle:
  *  [Pathogen][1] - `git clone https://github.com/fcpg/vim-orbital ~/.vim/bundle/vim-orbital`
  *  [NeoBundle][2] - `NeoBundle 'fcpg/vim-orbital'`
  *  [Vundle][3] - `Plugin 'fcpg/vim-orbital'`
  *  [Plug][4] - `Plug 'fcpg/vim-orbital'`
  *  manual - copy all of the files into your `~/.vim` directory
2. Append the following line to your .vimrc file:
```VimL
colorscheme orbital
```

FAQ
----
- How do I customize colors?  
  *  Either edit the 'colors/orbital.vim' file (it's plain vim 'highlight' commands), if you don't mind merging when pulling/updating;
  *  Or override with autocommands in you .vimrc:
```VimL
augroup myBetterColors
  au!
  autocmd ColorScheme *  hi! Number ctermfg=103
augroup END
```
- Some weird chars show up in my status line!  
  Check vim help for 'fillchars': `:h 'fcs`. The lightline theme use the 'stl'
  char in 'fillchars' if it is defined; unset it in your .vimrc to turn on the 
  "solid" status line.

Other Themes
-------------
- [Fahrenheit](https://github.com/fcpg/vim-fahrenheit)
- [Far Out](https://github.com/fcpg/vim-farout)

License
--------
[Attribution-ShareAlike 4.0 Int.](https://creativecommons.org/licenses/by-sa/4.0/)

[1]: https://github.com/tpope/vim-pathogen
[2]: https://github.com/Shougo/neobundle.vim
[3]: https://github.com/gmarik/vundle
[4]: https://github.com/junegunn/vim-plug
