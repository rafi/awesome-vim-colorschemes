# termschool

## An improved codeschool like vim theme for 256-color terminals

termschool is a vim theme optimized for 256-color terminals. The theme
"medium/dark" and makes heavy use of greys, greens and blues in pastel tones.
You can [preview termschool here](http://vimcolors.com/375/termschool/dark).

The original codeschool for 256-color terminals was created by @Astonj
(http://astonj.com) based on the editor used at http://codeschool.com. While I
enjoyed the theme, I felt it could use a number of improvements and started
implementing them for private use. At some point, my version started to differ
from the original and I decided to release it for public use, with the name
"termschool" (think "Codeschool for terminals.")

Keep in mind that this theme is a constant work in progress. I use editors all
day and once in a while I'll stumble on some color combination that I don't
quite like. When that happens, I'll update the theme and push a change. Fork
this repository if you prefer a theme that will never change, or keep pulling
newer versions if you like my fixes and improvements.

# Installation

## Using Vundle

If you're using Vundle, just add the following to your `~/.vimrc` file:

```VimL
Plugin 'marcopaganini/termschool-vim-theme'
colorscheme termschool
```

While still inside vim, type: `<ESC>:PluginInstall`. This should install
termschool automatically. Restart vim and the new theme should be the default.
Once in a while, type `<ESC>:PluginUpdate` to fetch the newest version of the
plugin from github.

## Manual installation

Manual installation is very simple: Download the `termschool.vim` file and copy
it into your `~/.vim/colors` directory. Edit your `~/.vimrc` file and add:

```VimL
colorscheme termschool
```
Restart vim and everything should work.

A better (but slightly more complicated) option is to git clone this repository
somewhere in your disk and create a symlink from the `termschool.vim` file
inside your working repository to `~/.vim/colors`.

## Caveats

Please note that this theme *requires* a 256-color capable terminal. Most
popular terminals are 256-color capable these days, but if things look odd,
your terminal might not have this capability.

If you know your terminal is 256-color capable and things still look
ugly/weird, try adding the following to your `~/.vimrc` file right before the
`colorscheme termschool` line:

```VimL
set t_Co=256
```

This will force vim to use 256 colors.

Note that the theme has been tuned for 256-color terminals (I just can't match
the productivity of screen + vim on gvim) but should also work fine for GUI
environments.

Feel free to send comments with ideas, suggestions and push requests.

## FZF Compatible colors

If you use [FZF](https://github.com/junegunn/fzf), you can get termschool compatible
colors by adding the following to your `~/.bashrc`:

```sh
export FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS}"'
  --color="fg:231,bg:234,bg+:23,hl:113,gutter:234"
  --color="query:255,prompt:178,pointer:178,marker:44"
'
```

If your terminal supports truecolor, you can make the FZF colors match the GUI
colors more closely:

```sh
export FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS}"'
  --color="fg:#f0f0f0,bg:#252c31,bg+:#005f5f,hl:#87d75f,gutter:#252c31"
  --color="query:#ffffff,prompt:#f0f0f0,pointer:#dfaf00,marker:#00d7d7"
'
```

## Related Links

You may also want to check the
[Mojave](https://github.com/marcopaganini/mojave-vim-theme) vim theme, a dark
color theme based (mostly) on pastel colors that is well suited to long editing
sessions.
