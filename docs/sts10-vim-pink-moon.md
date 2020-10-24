# Pink Moon, a colorscheme for Vim/Neovim

![A screenshot of some Rust code, as color-highlighted by the Pink Moon colorscheme, using the font Jetbrains Mono](img/pink-moon-rust.png)

![A screenshot of some HTML and CSS, as color-highlighted by the Pink Moon colorscheme, using the font DejaVu Sans Mono](img/pink-moon-frontend.png)

## Installation

**Option 1**: Install via a plugin manager, like [vim-plug](https://github.com/junegunn/vim-plug) 

1. Add `Plug 'sts10/vim-pink-moon'` as a plugin in your Vim config file (either `vimrc` or `init.vim` if using Neovim)
2. Run `:PlugInstall`
3. Put `colorscheme pink-moon` in your Vim config file. vim-pink-moon should run `set background=dark` for you, but you can put it in your config file as well.

A similar procedure should work with other plugin managers.

**Option 2**: Manual installation (assuming you're using Vim, as opposed to Neovim)

1. Download the colorscheme: `curl -O https://raw.githubusercontent.com/sts10/vim-pink-moon/master/colors/pink-moon.vim`
2. Move the colorscheme to `~/.vim/colors`: `mkdir -p ~/.vim/colors & mv pink-moon.vim ~/.vim/colors/`
3. Put `colorscheme pink-moon` and `set background=dark` in your `vimrc`. 

## Fonts in screenshots

The fonts in the screenshots above and below are [Deja Vu Sans Mono](http://dejavu-fonts.org/wiki/Download) and [JetBrains Mono](https://www.jetbrains.com/lp/mono/).

## Inspiration

I liked the vibe of [this setup](https://imgur.com/a/5DSV6) (which I found thanks to [this Reddit post](https://www.reddit.com/r/unixporn/comments/7638b7/budgie_i_really_really_like_your_name/?st=j9ro3ovb&sh=e3181cb6)), though I ended up picking most if not all of the colors independently. Not a lot of science involved!

## Troubleshooting (Getting true HEX colors)

Vim-Pink-Moon has HEX color codes in it, so it works well with GUI versions of Vim (including [MacVim](https://github.com/macvim-dev/macvim/releases/)), as well as terminals that have true color support (like [iTerm2](https://iterm2.com/) for macOS). 

If you're using [Neovim](https://github.com/neovim/neovim) and macOS and having trouble with getting the colors in the screenshot above to appear for you, I've got [a blog post](https://sts10.github.io/2015/10/24/true-hex-colors-with-neovim-and-iterm2.html) explaining how to get HEX colors in iTerm2 using Neovim. I also later wrote [a separate blog post about troubleshooting HEX colors will regular terminal Vim + iTerm](https://sts10.github.io/2016/06/14/true-hex-colors-in-vim-with-iterm2.html).

### Further troubleshooting

Try re-ordering these setting in your Vim config file (vimrc) to the following

```vim
set termguicolors
colorscheme pink-moon
set background=dark
```

For help from another source, check [the gruvbox wiki](https://github.com/morhetz/gruvbox/wiki/Terminal-specific).

## Slack Theme

If you want to make your [Slack](https://slack.com/) theme match Pink Moon, go to Preferences > Sidebar > Theme, scroll down to "Custom Theme", and paste in `#333C47,#434852,#6F98B3,#F0FDFF,#434852,#F0FDFF,#D08785,#D08785`. 

## More screenshots 

![A screenshot of some Ruby code, as color-highlighted by the Pink Moon colorscheme, using the font JetBrains Mono](img/pink-moon-markdown.png)

![A screenshot of some Ruby code, as color-highlighted by the Pink Moon colorscheme, using the font DejaVu Sans Mono](img/pink-moon-ruby.png)

