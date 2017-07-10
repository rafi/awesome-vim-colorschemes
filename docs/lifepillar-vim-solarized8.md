# Solarized 8: True Colors

![Solarized 8 Dark Flat](https://raw.github.com/lifepillar/Resources/master/solarized8/solarized8_dark_flat.png)

![Solarized 8 Light Flat](https://raw.github.com/lifepillar/Resources/master/solarized8/solarized8_light_flat.png)

This is yet another Solarized theme for Vim. It places itself half way between
the original [Solarized](https://github.com/altercation/vim-colors-solarized)
and the [Flattened](https://github.com/romainl/flattened) variant. It
removes only *some* of the bullshit. The color palette is exactly the same as
in Solarized, of course, although some highlight groups are defined slightly
differently (for instance, I have tried to avoid red on blue).

The main reason for the existence of this project is that the original Solarized
theme does not define `guifg` and `guibg` in terminal Vim, making it unsuitable
for versions of Vim supporting true-color terminals. Instead, this color scheme
works **out of the box** if you use:

- Vim ≥7.4.1799 with `termguicolors` set, or
- NeoVim,

**and** a true-color enabled terminal (e.g., [iTerm2](https://www.iterm2.com)).
Solarized 8 also works in MacVim, gVim, etc…: no configuration is needed.

For terminals not supporting true colors, your 16 terminal ASCII colors **must**
be set to the Solarized palette. The ugly degraded 256-color variant of the
original Solarized has been removed from Solarized 8.

In NeoVim, Solarized 8 also defines the color palette for the [terminal
emulator](https://neovim.io/doc/user/nvim_terminal_emulator.html), as well as
colors for the `TermCursor` and `TermCursorNC` highlight groups.


## Installation

If your Vim supports packages (`echo has('packages')` prints `1`), I strongly
recommend that you use them. Just clone this repo inside `pack/*/opt`, e.g.:

    git clone https://github.com/lifepillar/vim-solarized8.git \
     ~/.vim/pack/themes/opt/solarized8

Otherwise, use your favourite installation method.

There are actually 8 optimized color schemes:

- `solarized8_dark` and `solarized8_light`: the default Solarized theme;
- `solarized8_dark_low` and `solarized8_light_low`: low-contrast variant;
- `solarized8_dark_high` and `solarized8_light_high`: high-contrast variant;
- `solarized8_dark_flat` and `solarized8_light_flat`: “flat” variant (not
  present in the original Solarized, see screenshots above).

To use any of them, put a line like the following in your `.vimrc`:

    colorscheme solarized8_dark

**Note:** if you use Vim packages, there is no need to `packadd solarized8`.
Keep your `runtimepath` clean!


## Options

The following options are inherited from Solarized:

- `g:solarized_visibility`: one of `"normal"` (default), `"low"`, `"high"`;
- `g:solarized_diffmode`: one of `"normal"` (default), `"low"`, `"high"`,
  `"bold"`;
- `g:solarized_termtrans`: make terminal background transparent if set to `1`
  (default: `0`).

The following options were not available in the original Solarized:

- `g:solarized_statusline`: one of `"normal"` (default) or `"low"`;
- `g:solarized_term_italics`: set to `1` if your terminal supports italics
  (default is `0`).
- `g:solarized_old_cursor_style`: set to `1` if you want to use the original
  Solarized's cursor style (default: `0`). By default, the cursor is orange/red
  in light themes, and blue in dark themes.

The options above may be used with any `solarized8_*` variant.


## Troubleshooting

**Hey, I do not get the right colors when running Vim inside tmux or in my
favourite true-color enabled terminal!**

Try putting this in your `.vimrc`:

```viml
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

See `:h xterm-true-color` for the details.


## Tips

If you want to quickly toggle between dark and light background, you may define
a mapping like the following:

```viml
nnoremap  <leader>B :<c-u>exe "colors" (g:colors_name =~# "dark"
    \ ? substitute(g:colors_name, 'dark', 'light', '')
    \ : substitute(g:colors_name, 'light', 'dark', '')
    \ )<cr>
```

To tune the contrast level you may use the following snippet:

```viml
fun! Solarized8Contrast(delta)
  let l:schemes = map(["_low", "_flat", "", "_high"], '"solarized8_".(&background).v:val')
  exe "colors" l:schemes[((a:delta+index(l:schemes, g:colors_name)) % 4 + 4) % 4]
endf

nmap <leader>- :<c-u>call Solarized8Contrast(-v:count1)<cr>
nmap <leader>+ :<c-u>call Solarized8Contrast(+v:count1)<cr>
```

If you want to tweak the colors yourself, edit `src/solarized8.vim`, then `:source`
it to recreate the color schemes.

