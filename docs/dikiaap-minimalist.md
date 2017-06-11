<p align="center">
    <img src="http://i.imgur.com/laipfSy.png" alt="Minimalist on HTML">
</p>

# Minimalist
Minimalist is a Material Colorscheme Darker for Vim & inspired by 
[Material Theme](https://github.com/equinusocio/material-theme).

## Installation

To install this colorscheme, you can use one of the following ways:

- Use [Vundle](https://github.com/VundleVim/Vundle.vim#quick-start) by adding 
to your `.vimrc` Vundle plugin section:

        Plugin 'dikiaap/minimalist'

    Then run `:PluginInstall`.

OR

- Use [Pathogen](https://github.com/tpope/vim-pathogen#installation):

    Run the following in a terminal:   

        cd ~/.vim/bundle
        git clone https://github.com/dikiaap/minimalist

## Usage

After finishing installation, put this code to your `.vimrc`:

```viml
set t_Co=256
syntax on
colorscheme minimalist
```

This colorscheme also built-in with airline theme. If you wanna use:

```viml
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
```

## Support

As you know, colorscheme in vim by default supports many programming languages.
At this time `minimalist` is looks beautiful & focused on:

* C++
* CSS/CSS3
* HTML/HTML5
* JavaScript
* Markdown
* PHP
* Python
* Ruby
* Sass
* Shell
* XML

## Links

[GitHub](https://github.com/dikiaap/minimalist) ·
[Vim.org](http://www.vim.org/scripts/script.php?script_id=5490) ·
[Vim Awesome](http://vimawesome.com/plugin/minimalist-vim) ·
[DotShare.it](http://dotshare.it/dots/1397/)

## License

MIT © [Diki Ananta](https://dikiaap.id)
