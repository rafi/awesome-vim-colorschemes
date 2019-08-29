# vim-afterglow

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MVSBJ7JKSVGZ4&source=url)

🎨 Vim adaptation of the [Afterglow](https://github.com/YabataDesign/afterglow-theme) theme from Sublime Text 2/3.

🎁 Airline scheme included.

## Setup

To enable it, simply add `colorscheme afterglow` (not ~~vim-afterglow~~) to your `~/.vimrc` after having installed the plugin (manually or by using a package manager).

> Airline theme should be updated accordingly, but can be explicitly specified by using `let g:airline_theme='afterglow'`.

## Options

To further customize Afterglow, you can use the following options **before** setting the color scheme on your
`vimrc` (or `init.vim` if using NeoVim):

- Blackout: `let g:afterglow_blackout=1 (default: 0)`

     ☀️  Use this option if you need more contrast, such as when working in an office where open windows are just behind you, causing glare on your screen.

     > This option has no effect if `g:afterglow_inherit_background` is also set.

- Italicize comments: `let g:afterglow_italic_comments=1 (default: 0)`

    📖 Helps visual grepping and quickly differentiating source code and comments when skimming through files.

    > If using a terminal emulator (iTerm, Alacritty, Terminator...), check if it correctly supports italics. Evidently your chosen font type should have an italics variety too. In case of problems please check these two common scenarios before opening an issue concerning *italics*.

- Inherit background: `let g:afterglow_inherit_background=1 (default: 0)`

    Use this option if you want the background color to play nicely with the program (e.g. gVim, iTerm etc.) in which vim is used. It may be useful when instantiating vim inside Tmux.

## Screenshots

### Python
<img width="800" alt="python" src="https://cloud.githubusercontent.com/assets/8104631/23351157/c9c22072-fcbf-11e6-8c58-a04e0838ce5c.png">

### Ruby
<img width="800" alt="ruby" src="https://cloud.githubusercontent.com/assets/8104631/23351154/c99cf856-fcbf-11e6-88f6-857568a7ed8d.png">

### HTML
<img width="800" alt="html" src="https://cloud.githubusercontent.com/assets/8104631/23351156/c9bd9318-fcbf-11e6-9f49-0dc661c5aad5.png">

<!--### LaTeX-->
<!--<img width="800" alt="latex" src="https://cloud.githubusercontent.com/assets/8104631/23351155/c9b3d7c4-fcbf-11e6-8229-0c50707a98be.png">-->

## Donate

And if you liked this project, feel free to pay me a cup of coffee! 😊 ☕️ ❤️ 👇

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MVSBJ7JKSVGZ4&source=url)
