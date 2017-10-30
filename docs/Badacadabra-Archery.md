![Logo](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/logo.png)

## About

Archery is a dark colorscheme for Vim, inspired by Arch Linux color palette. This is where beautiful shades of blue meet mysterious shades of gray!

![Screenshot](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/screenshot.png)

## Installation

It is recommended to install Archery with a Vim plugin manager:

* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Vundle](https://github.com/VundleVim/Vundle.vim)
* [Plug](https://github.com/junegunn/vim-plug)
* [NeoBundle](https://github.com/Shougo/neobundle.vim)
* [Dein](https://github.com/Shougo/dein.vim)

Then enable the colorscheme in your vimrc with the following command: `colorscheme archery`

If you only use GVim, you're done! If you use terminal Vim, read on...

1. Archery supports 256 colors terminals, so you do not need plugins like [CSApprox](https://github.com/vim-scripts/CSApprox) or [GUIColorscheme](https://github.com/vim-scripts/guicolorscheme.vim) to use it.
2. Open your vimrc with Vim in your terminal and try `:set termguicolors`. If colors are rendered properly, you can add this command in your vimrc to use GUI colors directly (these are defined using the hexadecimal notation).
3. If "termguicolors" does not work, add `set t_Co=256` in your vimrc before setting the colorscheme and configure your terminal emulator to use the Archery color palette given below.

## Color palette

![Palette](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/palette.png)

| colors                                                                                                 | cterm | gui     |
|:------------------------------------------------------------------------------------------------------:|:-----:|:-------:|
| ![color0](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color0.png)   | 0     | #25272C |
| ![color1](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color1.png)   | 1     | #BA2A2A |
| ![color2](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color2.png)   | 2     | #008542 |
| ![color3](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color3.png)   | 3     | #F07D30 |
| ![color4](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color4.png)   | 4     | #0088CC |
| ![color5](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color5.png)   | 5     | #8D4888 |
| ![color6](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color6.png)   | 6     | #006596 |
| ![color7](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color7.png)   | 7     | #53586F |
| ![color8](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color8.png)   | 8     | #354151 |
| ![color9](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color9.png)   | 9     | #C95F5F |
| ![color10](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color10.png) | 10    | #73BA25 |
| ![color11](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color11.png) | 11    | #EAC06E |
| ![color12](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color12.png) | 12    | #81A3CF |
| ![color13](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color13.png) | 13    | #B589C2 |
| ![color14](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color14.png) | 14    | #25B8A5 |
| ![color15](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/colors/color15.png) | 15    | #F6F9FC |

In GVim, color8 will be `#282D34` instead of `#354151`. Why? Because some CLI tools use the dark gray color to display textual information. This makes some text unreadable, due to the dark background of Archery. So in terminal emulators, color8 must be lighter...

## Nice status & tab lines

If you want to display a status line and a tab line in Vim, make sure these options are set in your vimrc:

```viml
set showtabline=2
set laststatus=2
```

### Airline

![Airline](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/airline.png)

Put the following code in your vimrc to use Archery for Airline:

```viml
let g:airline_theme = 'archery'
```

For further configuration, please read the documentation of [Airline](https://github.com/vim-airline/vim-airline).

### Lightline

![Lightline](https://raw.githubusercontent.com/Badacadabra/vim-archery/master/images/lightline.png)

Put the following code in your vimrc to use Archery for Lightline:

```viml
let g:lightline = {
    \ 'colorscheme': 'archery',
    \ }
```

For further configuration, please read the documentation of [Lightline](https://github.com/itchyny/lightline.vim). You may also consider [lightline-buffer](https://github.com/taohex/lightline-buffer) to display a useful tab line.

## Plugins support

Archery plays nicely with the following plugins:

* [Airline](https://github.com/vim-airline/vim-airline)
* [Lightline](https://github.com/itchyny/lightline.vim)

* [CtrlP](https://github.com/kien/ctrlp.vim)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [Tagbar](https://github.com/majutsushi/tagbar)

## Syntax optimizations

### Raw

* CSS
* Markdown
* Readline
* YAML

### Tags

* HTML
* XML

### Programming

* C/C++
* Java
* JavaScript
* Perl
* PHP
* Python
* Ruby

## More 

Archery is the default colorscheme of [Vimpressionist](https://github.com/Badacadabra/Vimpressionist).

If you would like to use Vim everywhere on your computing environment, you should definitely check it out!
