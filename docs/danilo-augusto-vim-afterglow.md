# vim-afterglow

Vim adaptation of the famous [Afterglow](https://github.com/YabataDesign/afterglow-theme) theme from Sublime Text 2/3.

_If you like this project, feel free to pay me a cup of coffee!_ 😊 ☕️ ❤️  👉 &nbsp;&nbsp;&nbsp; [![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MVSBJ7JKSVGZ4&source=url)

## Features

🚀 **Modern** and nicely integrated with plugins and environments.

🔋 **Batteries included** so that you can concentrate on **what matters most: your code**.
 - Built-in airline scheme ✈️ 
 - No bad surprises: works for both Vim and Neovim, terminal and GUI.
 - Highlighted important keywords in <span style="color:#b05279;font-weight:bold;">reddish and bold</span> inside comments: `TODO`, `FIXME`, `XXX`...
 - No more "it looks flat/terrible on this language": includes customized highlighting for many popular languages
    - Java
    - Python
    - C
    - Lua
    - Go
    - Clojure
    - Scala
    - PHP
    - and many others...

🎨 **Easy on the eyes**

Click on the image below to view it in the original size (more screenshots below)

<center>
    <a href="https://user-images.githubusercontent.com/8104631/68043099-cfbc4800-fcd4-11e9-8b9d-2ba0372f4196.png">
        <img width="900" alt="python1" src="https://user-images.githubusercontent.com/8104631/68043099-cfbc4800-fcd4-11e9-8b9d-2ba0372f4196.png">
    </a>
</center>

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

<center>
    <p>Python</p>
    <img width="600" alt="python2" src="https://cloud.githubusercontent.com/assets/8104631/23351157/c9c22072-fcbf-11e6-8c58-a04e0838ce5c.png">
</center>

<center>
    <p>Ruby</p>
    <img width="600" alt="ruby" src="https://cloud.githubusercontent.com/assets/8104631/23351154/c99cf856-fcbf-11e6-88f6-857568a7ed8d.png">
</center>

<center>
    <p>HTML</p>
    <img width="600" alt="html" src="https://cloud.githubusercontent.com/assets/8104631/23351156/c9bd9318-fcbf-11e6-9f49-0dc661c5aad5.png">
</center>

<center>
    <p>LaTeX</p>
    <img width="600" alt="latex" src="https://cloud.githubusercontent.com/assets/8104631/23351155/c9b3d7c4-fcbf-11e6-8229-0c50707a98be.png">
</center>
