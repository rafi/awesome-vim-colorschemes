<h2 align="center">
𝐃𝐞𝐟𝐚𝐮𝐥𝐭
</h2>

![sonokai-default](https://user-images.githubusercontent.com/37491630/87916859-a03dad80-caa6-11ea-9694-b34c4a980672.png)

<h2 align="center">
𝐀𝐭𝐥𝐚𝐧𝐭𝐢𝐬
</h2>

![sonokai-atlantis](https://user-images.githubusercontent.com/37491630/87898134-ecc1c280-ca7f-11ea-8bff-df8269398b88.png)

<h2 align="center">
𝐀𝐧𝐝𝐫𝐨𝐦𝐞𝐝𝐚
</h2>

![sonokai-andromeda](https://user-images.githubusercontent.com/37491630/87898138-ee8b8600-ca7f-11ea-90ea-681955458c68.png)

<h2 align="center">
𝐒𝐡𝐮𝐬𝐢𝐚
</h2>

![sonokai-shusia](https://user-images.githubusercontent.com/37491630/87898140-f0ede000-ca7f-11ea-8371-6dd5f0a205d2.png)

<h2 align="center">
𝐌𝐚𝐢𝐚
</h2>

![sonokai-maia](https://user-images.githubusercontent.com/37491630/87898142-f2b7a380-ca7f-11ea-98ea-4c4e832cdbf1.png)

Sometimes I need a high contrast color scheme, and I think monokai is one of the best solutions, it's very beautiful and vivid.

However there is one thing I can't stand -- the contrast is too high, which is totally unacceptable to me.

This color scheme is based on [Monokai Pro](https://monokai.pro/vscode), the contrast is adjusted to be a bit lower while keeping the colors vivid enough.

The `shusia` and `maia` variants are based on `monokai pro` and `monokai machine` respectively. I'm not going to port all variants of [Monokai Pro](https://monokai.pro/vscode) because I don't like some of them. In addition, I designed some new variants inspired by other color schemes.

## Features

- High contrast but within acceptable range.
- Vivid colors.
- Highly customizable.
- Rich support for common file types and plugins.
- [Italic support](https://github.com/sainnhe/icursive-nerd-font) 🎉

## Installation

### Via Plugin Manager

Take [vim-plug](https://github.com/junegunn/vim-plug) for example:

```vim
Plug 'sainnhe/sonokai'
```

For better syntax highlighting support, please install [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot) or [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).

### Manually

1. Clone this repository.
2. Copy `/path/to/sonokai/autoload/sonokai.vim` to `~/.vim/autoload/`.
3. Copy `/path/to/sonokai/colors/sonokai.vim` to `~/.vim/colors/` .
4. Copy `/path/to/sonokai/doc/sonokai.txt` to `~/.vim/doc/` and execute `:helptags ~/.vim/doc/` to generate help tags.
5. To install [airline](https://github.com/vim-airline/vim-airline) theme, copy `/path/to/sonokai/autoload/airline/themes/sonokai.vim` to `~/.vim/autoload/airline/themes/sonokai.vim` .
6. To install [lightline](https://github.com/itchyny/lightline.vim) theme, copy `/path/to/sonokai/autoload/lightline/colorscheme/sonokai.vim` to `~/.vim/autoload/lightline/colorscheme/sonokai.vim` .

## Usage

### Vim

Put this in your vimrc:

```vim
" Important!!
if has('termguicolors')
  set termguicolors
endif

" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1

colorscheme sonokai
```

See `:help sonokai-configuration` for more configuration options.

If you want to apply this color scheme temporarily, run this command in vim(**this may cause broken colors**):

```vim
:colorscheme sonokai
```

#### Airline

To enable [airline](https://github.com/vim-airline/vim-airline) color scheme, put this in your vimrc:

```vim
let g:airline_theme = 'sonokai'
```

To apply it without reloading:

```vim
:AirlineTheme sonokai
```

#### Lightline

To enable [lightline](https://github.com/itchyny/lightline.vim) color scheme, put this in your vimrc:

```vim
let g:lightline = {}
let g:lightline.colorscheme = 'sonokai'

" or this line
let g:lightline = {'colorscheme' : 'sonokai'}
```

To apply it without reloading:

```vim
:let g:lightline.colorscheme = 'sonokai'
:call lightline#init()
:call lightline#colorscheme()
```

### FAQ

**Q: It doesn't work as expected.**

**A:**

1. This color scheme is mainly designed for true colors, `set termguicolors` is required. Check output of `vim --version`, maybe your vim doesn't support `termguicolors`.
2. Maybe your terminal emulator doesn't support true colors, you can test it using [this script](https://unix.stackexchange.com/questions/404414/print-true-color-24-bit-test-pattern).
3. If you are running vim in tmux, you need to override default true colors of tmux, as tmux cannot display true colors properly: [#1246 How to use true colors in vim under tmux?](https://github.com/tmux/tmux/issues/1246)
4. There are many highlight group links in syntax files while a color scheme may change them, enabling one color scheme based on another color scheme enabled is very likely to cause colors to break. If any color is broken, you can enable the color scheme in your vimrc instead of after vim startup.

**Q: How to enable cursive italic keywords?**

**A:**

1. Install a font that supports cursive italics, for example [icursive-nerd-font](https://github.com/sainnhe/icursive-nerd-font).
2. Enable italic keywords in this color scheme: `let g:sonokai_enable_italic = 1`
3. Disable italic comment(optional): `let g:sonokai_disable_italic_comment = 1`

**Q: What's your status line configuration?**

**A:** See this [article](https://www.sainnhe.dev/post/status-line-config/).

**Q: What's the font used here?**

**A:** [Fira Code iCursive Op](https://github.com/sainnhe/icursive-nerd-font).

## Related Projects

See this [wiki page](https://github.com/sainnhe/sonokai/wiki/Related-Projects).

## More Color Schemes

- [Gruvbox Material](https://github.com/sainnhe/gruvbox-material)
- [Forest Night](https://github.com/sainnhe/forest-night)
- [Edge](https://github.com/sainnhe/edge)

## Inspiration

- [Monokai Pro](https://monokai.pro/vscode)
- [Edge](https://github.com/sainnhe/edge)
- [Nord](https://www.nordtheme.com)

## License

[MIT](./LICENSE) © sainnhe
