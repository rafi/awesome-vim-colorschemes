![logo][logo]
# Vim-Two-Firewatch Colorscheme

Vim-Two-Firewatch is a GUI and true color optimised colorscheme that gracefully adapts if your
environment supports only 256 colors. It comes with a light and a dark variation.

It has been tested on a Mac NeoVim 0.1.4 and 0.1.5, Vim 7.4.1952 with iTerm2 (nightly build)
This colorscheme has also a theme for Airline.

## Why Two-Firewatch?
[Simurai](http://simurai.com/projects/2016/01/01/duotone-themes) has created duotone themes for Atom.

DuoTone themes use only 2 hues (7 shades in total), toning down less important parts and hightlighting
only the important ones.

These themes come in different flavours (mostly dark) and some contributors have created light shades.

I wasn't satisfied with the any adpatations for Vim, for different reasons:

* I loved the original duotone light theme
* I hated the original duotone dark theme, background was too... purple

I decided to give it a go:

* Be as close as possible to the duotone light theme
* Adapt firewatch for Atom so it fits with the duotone principle

## Appearance

Here is how this looks like:

Light version:
![Two-Firewatch Light Version][screenshot_light]

Dark version:
![Two-Firewatch Dark Version][screenshot_dark]

## Installation

Use your favorite vim plugin packager.

## Usage

```vim
set background=dark " or light if you prefer the light version
let g:two_firewatch_italics=1
colo two-firewatch

let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme
```


If your environment supports italic, you can set `g:two_firewatch_italics=1` in your `vimrc`

## iTerm2 Theme

Can be found here, two flavours as well: [iTerm2 Two Firwatch theme](https://github.com/rakr/iterm-two-firewatch)

## Toggling background

When you switch background, Vim reapplies the same colorscheme. The builtin Vim way is `:set bg=dark` or `:set bg=light`.
If you want to speed the process, because like me you use a light colorscheme during the day and a dark one at night, there is a solution:

[Toggle BG](https://github.com/rakr/vim-togglebg)

This script has been extracted from the Solarized colorscheme and will allow you to switch background with on key stroke.

# Contributors

I would like to thank the following people for their contributions:

* [Keremc](https://github.com/keremc), for adding the support for Neovim's terminal
* [mcchrish](https://github.com/mcchrish), for the lightline theme

[logo]: screenshots/logo.png
[screenshot_dark]: screenshots/dark-variation.png
[screenshot_light]: screenshots/light-variation.png
