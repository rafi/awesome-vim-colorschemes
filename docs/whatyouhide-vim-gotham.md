![Logo](https://user-images.githubusercontent.com/3890250/206901868-c0e78cc3-d10f-4404-a2d7-f7edb923e041.png)


> It's the colorscheme we set that defines us. — *(Batman)*

Gotham is a **very dark** vim colorscheme. It works on GUI vim (MacVim or gVim)
and on terminal vim. For terminal vim, there's support for a lot of terminal
emulators in the [gotham-contrib][gotham-contrib] repository.

<img width="1013" alt="Screenshot of the color scheme" src="https://user-images.githubusercontent.com/3890250/206901895-954841ad-ea49-4c27-8206-1ef8aa55637c.png">


## Installation

I moved to [vim-plug][vim-plug] a while ago and never looked back. Anyway, you
can install Gotham with whatever package manager you use. For example:

``` viml
" vim-plug
Plug 'whatyouhide/vim-gotham'
" NeoBundle
NeoBundle 'whatyouhide/vim-gotham'
" Vundle
Plugin 'whatyouhide/vim-gotham'
" dein.vim
call dein#add('whatyouhide/vim-gotham')
```

If you don't use a plugin manager just copy the content of `vim/colors/` to
`~/.vim/colors`.

When you have the plugin installed, you can set it in your `vimrc`:

``` viml
colorscheme gotham
```

#### Terminal vim and 256 colors version

If you want to use Gotham in terminal vim, you should consider setting Gotham as
the colorscheme of your terminal emulator too. See the [relevant
section](#other).

If you're fine with not-so-faithful colors, a 256 colors version of Gotham is
available. To use it, just replace `gotham` with `gotham256` in your `vimrc`:

``` viml
colorscheme gotham256
```

Using `gotham256` (given that your terminal supports 256 colors) ensures that
the colors in vim are fixed and don't depend on the colorscheme of the terminal
emulator.

**Please**, use the 256 colors version only if you know what you're doing since
it looks "rougher" than the regular version.

#### Airline

Gotham supports [vim-airline][vim-airline] out of the box. When you use the
Gotham colorscheme, Airline should be able to pick it up and use it. If you want
to set it manually, you can use the `AirlineTheme` command for both the regular
version and the 256 colors version:

    :AirlineTheme gotham
    :AirlineTheme gotham256

Gotham by default emphasises the usage of insert mode by using a distinctive bright yellow color in
the airline mode segment. To change the color used for insert mode to a darker less emphasised color
add the following to your vimrc:

```viml
let g:gotham_airline_emphasised_insert = 0
```

#### Lightline

Gotham supports [lightline.vim][lightline.vim] too. To enable the colorscheme,
add one of the following lines to your `.vimrc`:

```viml
let g:lightline = { 'colorscheme': 'gotham' }
let g:lightline = { 'colorscheme': 'gotham256' }
```

### <a name=other></a>Other

Gotham is available for other platforms too. If you want terminal vim to look as
good as GUI vim, you have to install the Gotham colorscheme for your terminal
emulator too.

An up-to-date list of supported platforms as well as installation instructions
for each of those platforms are available at the
[gotham-contrib][gotham-contrib] repository.

There's an [Emacs version][emacs-version] too, but I don't maintain it.


### Color Palette


| Color Base    | Hex           | Other Colors  | Hex           |
| ------------- | ------------- | ------------- | ------------- |
| Base 0        | `#0c1014`     | Red           | `#c23127`     |
| Base 1        | `#11151c`     | Orange        | `#d26937`     |
| Base 2        | `#091f2e`     | Yellow        | `#edb443`     |
| Base 3        | `#0a3749`     | Magenta       | `#888ca6`     |
| Base 4        | `#245361`     | Violet        | `#4e5166`     |
| Base 5        | `#599cab`     | Blue          | `#195466`     |
| Base 6        | `#99d1ce`     | Cyan          | `#33859E`     |
| Base 7        | `#d3ebe9`     | Green         | `#2aa889`     |


## Contributing

All forms of contribution are welcome: bug reports, bug fixes, pull requests and
simple suggestions. Thanks!

### List of contributors

You can find the list of contributors [here][contributors].


## License

MIT &copy; 2014 Andrea Leopardi, see [the license][license-file].

[license-file]: LICENSE.txt

[vim-plug]: https://github.com/junegunn/vim-plug
[gotham-contrib]: https://github.com/whatyouhide/gotham-contrib
[vim-airline]: https://github.com/bling/vim-airline
[lightline.vim]: https://github.com/itchyny/lightline.vim
[emacs-version]: https://github.com/wasamasa/gotham-theme
[contributors]: https://github.com/whatyouhide/vim-gotham/graphs/contributors
