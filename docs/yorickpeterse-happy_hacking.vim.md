# Happy Hacking

Happy Hacking is my personal color scheme for Vim/Neovim. It was originally
based on another theme of mine called ["Autumn"][autumn] but has changed quite a
bit over the years.

Happy Hacking uses a fairly small set of colors instead of throwing rainbows at
your face. A shade of white is the primary color followed by a few other colors
used to highlight specific elements such as keywords, numeric values, and
strings.

Happy Hacking supports both Vim and Neovim and can be used both in a GUI version
of Vim as well as in a terminal.

## Screenshots

Rust:

<img src="screenshots/rust.jpg" width="600">

Ruby:

<img src="screenshots/ruby.jpg" width="600">

## Installation

Manually:

    mkdir -p ~/.vim/colors
    ln -s $PWD/colors/happy_hacking.vim ~/.vim/colors/happy_hacking.vim
    color happy_hacking

Vundle:

    Plugin 'YorickPeterse/happy_hacking.vim'

vim-plug:

    Plug 'YorickPeterse/happy_hacking.vim'

Pathogen:

    cd .vim/bundle/
    gitclone git@github.com:YorickPeterse/happy_hacking.vim

## Terminal Support

This theme can be used both in a GUI version of Vim (e.g. MacVim, gVim, etc) as
well as the terminal. If you're running Vim in a terminal make sure to enable
true color support by adding this to your `.vimrc`:

    set termguicolors
    set t_ut=

If you're running Vim inside Tmux also add the following to your Tmux
configuration file:

    set -g default-terminal "screen-256color"
    set-option -ga terminal-overrides ",screen-256color:Tc"

Also make sure the `$TERM` is set to `xterm-256color` and that your terminal
emulator can actually support said setting and 24bit colors

Neovim users can skip the `t_ut` option, but you do have to set the following
environment variable:

    export NVIM_TUI_ENABLE_TRUE_COLOR=1

## License

Happy Hacking and all extra source code in this repository is licensed under
the MIT license unless specified otherwise. A copy of this license can be found
in the file "LICENSE" in the root directory of this repository.

[autumn]: https://github.com/yorickpeterse/autumn.vim
