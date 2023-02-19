![Iceberg](https://cocopon.github.io/iceberg.vim/assets/github/20180804/cover.png)

Iceberg is well-designed, bluish color scheme for Vim and Neovim.

![Screenshot](https://cocopon.github.io/iceberg.vim/assets/github/screenshot.png)

See the [official site](https://cocopon.github.io/iceberg.vim/) or the
[vimonline page](https://www.vim.org/scripts/script.php?script_id=4820) for more
information.




# Features
- Simple: no configuration required and easy to use
- Fast: pre-compiled to reduce loading time
- Dark and light background
- 256-colors terminal support
- Terminal colors support
- [airline][airline] theme and [lightline][lightline] colorscheme
- Various plugins support:
  [ALE][ale]
  / [CtrlP][ctrlp]
  / [Denite][denite]
  / [EasyMotion][easymotion]
  / [Git Gutter][git-gutter]
  / [git-messenger.vim][git-messenger.vim]
  / [Signify][signify]
  / [Sneak][sneak]
  / [Startify][startify]
  / [Syntastic][syntastic]
  / [vim-plug][vim-plug]
  / [vim-zenspace][vim-zenspace]
  etc.
- Better syntax highlight with:
  [typescript-vim][typescript-vim]
  / [vim-elixir][vim-elixir]
  / [vim-flow][vim-flow]
  / [vim-graphql][vim-graphql]
  / [vim-javascript][vim-javascript]
  / [vim-markdown][vim-markdown]
  etc.

![lightline](https://user-images.githubusercontent.com/602961/64060996-407cb080-cc0f-11e9-87dd-e5c535815fab.png)




# Philosophy
Creator of Iceberg talked about how to create your lovely color scheme in
[VimConf 2017][vimconf2017], international Vim conference.
[This slides][vimconf-slides] also explained the philosophy of Iceberg.

[![Creating Your Lovely Color Scheme](https://cocopon.github.io/iceberg.vim/assets/github/creating-your-lovely-color-scheme.png)][vimconf-slides]




# For other environments

## IDEs and text editors
- [Visual Studio Code](https://github.com/cocopon/vscode-iceberg-theme)
  by [cocopon]
- [Atom](https://github.com/cocopon/atom-iceberg-syntax/)
  by [cocopon]
- [Xcode](https://github.com/cocopon/xcode-iceberg)
  by [cocopon]
- [AppCode](https://github.com/Kuniwak/iceberg.icls)
  by [Kuniwak](https://github.com/Kuniwak)
- [Emacs](https://github.com/conao3/iceberg-theme.el)
  by [conao3](https://github.com/conao3)
- [CotEditor](https://github.com/YusukeSano/coteditor-iceberg)
  by [YusukeSano](https://github.com/YusukeSano)


## Terminal emulators
- [Terminal.app](https://cocopon.github.io/iceberg.vim/#macosTerminalApp)
  by [cocopon]
- [Hyper](https://github.com/cocopon/hyper-iceberg)
  by [cocopon]
- [st](https://notabug.org/vejetaryenvampir/st-iceberg)
  by [vejetaryenvampir](https://notabug.org/vejetaryenvampir)
- [kitty (dark)](https://gist.github.com/gkeep/9b6f3e86d44542f73b526183095d5c3a)
  by [gkeep](https://github.com/gkeep)
- [kitty (light)](https://gist.github.com/gkeep/3434864a3321fcce7d69e75d6d63888e)
  by [gkeep](https://github.com/gkeep)
- [alacritty](https://github.com/alacritty/alacritty/wiki/Color-schemes#iceberg)
  by [connorlay](https://github.com/connorlay)

NOTE: [terminal.sexy][terminal-sexy] provides configuration files for
the 16 ANSI colors for many terminal emulators (e.g. GNOME Terminal, iTerm2,
etc.). Use [.Xresources file][xresources] as import and export it for
the emulator of your choice.

## Other
- [bumblebee-status](https://github.com/tobi-wan-kenobi/bumblebee-status)
  by [whzup](https://github.com/whzup)
- [tmux](https://github.com/gkeep/iceberg-dark#tmux)
  by [gkeep](https://github.com/gkeep)
- [alternative dark theme for lightline and airline, bumblebee-status](https://github.com/gkeep/iceberg-dark)
  by [gkeep](https://github.com/gkeep)
- [Slack sidebar](https://gist.github.com/cocopon/2acffd70883ceb004c9c3117c34a9673)
  by [cocopon]




# Building your own Iceberg
NOTE: This section is for color scheme developers. If you just want to use the
color scheme, you don't have to follow these steps.

1. Install [cocopon/pgmnt.vim][pgmnt], a template engine for Vim color scheme,
   to your Vim.

2. To modify a color palette, edit `autoload/iceberg/palette/(dark|light).vim`.
   If you make changes, be sure to `:source` this file before step 4 otherwise
   your color palette changes will not be reflected.

3. To modify highlighting groups or links, edit `src/iceberg.vim`.

4. After editing, compile the source file as below:

   ```vim
   :e src/iceberg.vim
   :cd %:h
   :source %
   ```

   Compiled files will be output into `autoload` directory.




# License
MIT License. See `LICENSE.txt` for more information.




[ale]:https://github.com/w0rp/ale
[airline]:https://github.com/vim-airline/vim-airline/
[cocopon]:https://github.com/cocopon
[ctrlp]:https://github.com/ctrlpvim/ctrlp.vim
[denite]:https://github.com/Shougo/denite.nvim
[easymotion]:https://github.com/easymotion/vim-easymotion
[git-gutter]:https://github.com/airblade/vim-gitgutter
[git-messenger.vim]:https://github.com/rhysd/git-messenger.vim
[lightline]:https://github.com/itchyny/lightline.vim
[neovim]:https://neovim.io/
[pgmnt]:https://github.com/cocopon/pgmnt.vim
[signify]:https://github.com/mhinz/vim-signify/
[sneak]:https://github.com/justinmk/vim-sneak
[startify]:https://github.com/mhinz/vim-startify
[syntastic]:https://github.com/vim-syntastic/syntastic
[terminal-sexy]:https://terminal.sexy
[typescript-vim]:https://github.com/leafgarland/typescript-vim
[vim-elixir]:https://github.com/elixir-editors/vim-elixir
[vim-flow]:https://github.com/flowtype/vim-flow
[vim-graphql]:https://github.com/jparise/vim-graphql
[vim-javascript]:https://github.com/pangloss/vim-javascript
[vim-markdown]:https://github.com/tpope/vim-markdown
[vim-plug]:https://github.com/junegunn/vim-plug
[vim-zenspace]:https://github.com/thinca/vim-zenspace
[vimconf-slides]:https://speakerdeck.com/cocopon/creating-your-lovely-color-scheme
[vimconf2017]:https://vimconf.vim-jp.org/2017/
[xresources]:https://gist.github.com/cocopon/1d481941907d12db7a0df2f8806cfd41
