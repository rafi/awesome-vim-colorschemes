jellybeans.vim
==============

A colorful, dark color scheme, inspired by [ir_black][] and [twilight][].

Designed primarily for a graphical Vim, but includes support for 256, 88, 16,
and 8 color terminals. On a 16 or 8 color terminal, replace its colors with
those in `ansi-term-colors.txt` for best results.

This script is [vimscript #2555][vimscript] at Vim.org.

Scroll down for [screenshots][ss-anchor]!

## Options

### Custom Highlights

If you prefer slightly different colors from what Jellybeans defines,
you can set `g:jellybeans_overrides` in your .vimrc to a dictionary of
custom highlighting parameters:

    let g:jellybeans_overrides = {
    \    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
    \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
    \              'attr': 'bold' },
    \    'Comment': { 'guifg': 'cccccc' },
    \}

This removes the need to edit Jellybeans directly, simplifying
upgrades. In addition, RGB colors specified this way are run through
the same color approximation algorithm that the core theme uses, so
your colors work just as well in 256-color terminals.

If you can pick better colors than the approximator, specify them
in the `256ctermfg` and `256ctermbg` parameters to override
its choices.

#### Custom Background Colors

To set a custom background color, override the special
`background` highlight group:

    let g:jellybeans_overrides = {
    \    'background': { 'guibg': '000000' },
    \}

Jellybeans uses the background color in multiple highlight
groups. Using the special `background` group overrides them all
at once.

This replaces `g:jellybeans_background_color` and
`g:jellybeans_background_color_256` from Jellybeans versions
before 1.6.

#### Terminal Background

If you would prefer to use your terminal's default background
(e.g. for transparent backgrounds, image backgrounds, or a
different color) instead of the background color that Jellybeans
applies, use this `background` override:

    let g:jellybeans_overrides = {
    \    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
    \}

### Italics

Jellybeans disables italics in terminal Vim by default, as some
terminals do other things with the text's colors instead of
actually italicizing the text. If your terminal does fully
support italics, add

    let g:jellybeans_use_term_italics = 1

to your .vimrc to enable italics in terminal Vim.

If you don't want italics even in GUI Vim, add

    let g:jellybeans_use_gui_italics = 0

### Low-Color Black (16 and 8 color terminals)

Since the background on a dark terminal is usually black already,
Jellybeans appropriates the black ANSI color as a dark grey and
uses no color when it really wants black.

If you can’t or don’t want to change your terminal’s color
mappings, add

    let g:jellybeans_use_lowcolor_black = 0

to your .vimrc to render “black” text as Vim’s grey (ANSI white).

Users of Apple’s pre-10.7 Terminal.app can use the TerminalColours
plugin ([Leopard][tc-leopard], [Snow Leopard][tc-snowleopard]) to
change the default colors.

## Screenshots

![][preview-ss]

The font in the screenshot is 10pt [Monaco][monaco]:

```vim
set guifont=Monaco:h10 noanti
```


[ir_black]: https://web.archive.org/web/20140211124943/http://toddwerth.com/2008/01/25/a-black-os-x-leopard-terminal-theme-that-is-actually-readable/
[twilight]: http://www.vim.org/scripts/script.php?script_id=1677
[vimscript]: http://www.vim.org/scripts/script.php?script_id=2555
[tc-leopard]: http://ciaranwal.sh/2007/11/01/customising-colours-in-leopard-terminal
[tc-snowleopard]: https://github.com/timmfin/terminalcolours
[preview-ss]: https://nanotech.nanotechcorp.net/downloads/jellybeans-preview.png
[ss-anchor]: #screenshots
[monaco]: https://en.wikipedia.org/wiki/Monaco_(typeface)
