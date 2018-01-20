# vim-deus

deus was created out of sheer rage caused by all of the bad Solarized/Gruvbox clones.
I was tired of them. I needed something original, something new. So if you are like me...
and I believe many of you are, 

I present you **Deus** 

---


## Screenshots

GVIM: 
![alt-text](https://github.com/ajmwagar/vim-deus/blob/master/screencaps/ScreencapYCM.png "deus Colorscheme")

GVIM + YCM:

![alt-text](https://github.com/ajmwagar/vim-deus/blob/master/screencaps/Deus.png "deus Colorscheme")

GVIM + Pylint + Syntastic:

![alt-text](https://github.com/ajmwagar/vim-deus/blob/master/screencaps/Pylint.png "deus Colorscheme")

Airline theme
![img](https://github.com/ajmwagar/vim-deus/blob/master/screencaps/Airline.png)

---

## Installation

Manual: place `deus.vim` in your `vimfiles/colors` folder and add this line to your `.vimrc`
`colors deus`

**OR**

Use a package manager like Pathogen, Vundle, or Vim-plug just to name a few:

### Pathogen:

`cd ~/.vim/`

`mkdir bundle`

`cd bundle`

`git clone https://github.com/ajmwagar/vim-deus.git`

In your terminal


### Vim-Plug:
add the following lines to your .vimrc:

```
call plug#begin('~/.vim/bundle/')
Plug (ajmwagar/vim-deus)
cal  plug#end()
```
Don't forget to run:

`:PlugInstall`


---



## Language Syntax Support:

- Lua
- Go
- **JavaScript** 
- **CSS/HTML**
- PHP
- **C#**
- JSON
- **Markdown**
- Haskell
- Scala
- Elixir
- Java
- MoonScript
- Objective C
- C Languages
- CoffeeScript
- **Ruby**
- **Python**
- Clojure
- XML

**Bold** = really nice looking (They all look good but these are my personal favorites.)

---

## Plugin support

- Airline `:AirlineTheme deus`
- Ctrlp
- NerdTREE
- Syntastic (and most linters)
- Deoplete
- YCM (YouCompleteMe)
- Tabbar
- Vim-easy-motion
- Sneak
- Rainbow-Parentheses

---
## Troubleshooting

When using terminal-vim and vim-deus the colors
can get messed up.

To fix this add the following snippet to your ~/.vimrc:

`set t_Co=256`

`set termguicolors` 

`let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"`

`let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"`

`set background=dark    " Setting dark mode`

`colorscheme deus`

`let g:deus_termcolors=256`

> _Please not this does **not** work with tmux (you will have a brownish background)._

---

## Thank You
I took **a lot** of inspiration from two great colorschemes, 
[Onedark](https://github.com/joshdick/onedark.vim) and
[Gruvbox](https://github.com/morhetz/gruvbox). I want to thank their creators for making such great
color schemes. So thank you!
