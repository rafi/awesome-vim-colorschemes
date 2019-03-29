# Pink Moon, a colorscheme for Vim/Neovim

![Pink Moon, iTerm2, Neovim, Ruby](img/pink-moon-ruby.png)

![Pink Moon, iTerm2, Neovim, HTML and CSS](img/pink-moon-frontend.png)

## Installation

Option 1: Install via plugin manager [vim-plug](https://github.com/junegunn/vim-plug) 

1. Add `Plug 'sts10/vim-pink-moon'` as a plugin in your Vim config file (either `vimrc` or `init.vim` if using Neovim)
2. Run `:PlugInstall`
3. Put `colorscheme pink-moon` in your Vim config file. vim-pink-moon should run `set background=dark` for you.

(A similar procedure should work with other plugin managers.)

Option 2: Manual installation

1. Clone or download this repo.
2. Move `colors/pink-moon.vim` into your `~/.vim/colors` directory. 
3. Put `colorscheme pink-moon` and `set background=dark` in your `vimrc`. 

The font in the screenshots above is [Deja Vu Sans Mono](http://dejavu-fonts.org/wiki/Download)

## Process/Inspiration

I'm still tweaking with this colorscheme quite a bit, so apologies if you liked an older version more. An older version is saved in this repo as `yellow-moon`. Also, feel free to submit issues and pull requests.

I liked the vibe of [this setup](https://imgur.com/a/5DSV6) (which I found thanks to [this Reddit post](https://www.reddit.com/r/unixporn/comments/7638b7/budgie_i_really_really_like_your_name/?st=j9ro3ovb&sh=e3181cb6)), though I ended up picking most if not all of the colors independently.

## Getting True HEX Colors

Vim-Pink-Moon has HEX color codes in it, so it works well with GVim (including [MacVim](https://github.com/macvim-dev/macvim/releases/)), as well as terminals that have true color support (like [iTerm2](https://iterm2.com/) for macOS). 

If you're using [Neovim](https://github.com/neovim/neovim) and macOS and having trouble with getting the colors in the screenshot above to appear for you, I've got [a blog post](https://sts10.github.io/2015/10/24/true-hex-colors-with-neovim-and-iterm2.html) explaining how to get HEX colors in iTerm2 using Neovim. I also later wrote [a separate blog post about troubleshooting HEX colors will regular terminal Vim + iTerm](https://sts10.github.io/2016/06/14/true-hex-colors-in-vim-with-iterm2.html).

## Slack Theme

If you want to make your [Slack](https://slack.com/) theme match this Vim colorscheme, go to Preferences > Sidebar > Theme, scroll down to "Custom Theme", and paste in `#333C47,#434852,#6F98B3,#F0FDFF,#434852,#F0FDFF,#D08785,#D08785`. 
