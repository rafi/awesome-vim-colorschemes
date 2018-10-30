vim-256noir
===========
A dark 256-color color scheme for vim.

Have you ever wondered why most syntax highlighting of source code is about as
subtle and pretty as a candy shop explosion? A technical reason is the
historical constraints imposed by 16 color terminals, but fortunately this
limitation is easy to overcome.

Features
--------
* Minimal colors, to avoid distracting:

  - Shades of gray for most elements
  - Bright keywords to highlight structure.
  - Dark comments & strings to emphasize surrounding code.
  - Red for exceptional elements (constants & errors)

* Works in ``vim`` and ``gvim``. Rudimentary support for 16-color terminals.

Usage
-----
- Enable `256 colors in vim <http://vim.wikia.com/wiki/256_colors_in_vim>`_.
  Note that when using ``ssh``, both client and server need to be properly configured.
- Put ``256_noir.vim`` in ~/.vim/colors/
- Add the following to ``~/.vimrc``:

.. code-block:: vim

    colorscheme 256_noir

    " Change highlighting of cursor line when entering/leaving Insert Mode
    set cursorline
    highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
    autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
    autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212

.. image:: screenshot.png
   :alt: screenshot of vim with noir colorscheme

The font in the above screenshots is the default xterm bitmap font
`fixed <https://en.wikipedia.org/wiki/Fixed_(typeface)>`_ at 6x13.

Bonus
-----
- `mc <https://midnight-commander.org/>`_, add the following to e.g. ``~/.bashrc``:

  .. code-block:: bash
  
      export MC_SKIN=dark

- `mutt <http://www.mutt.org/>`_, add the following to ``~/.muttrc``::

      color normal      white default
      color status      black white
      color indicator   white red
      color hdrdefault  yellow default
      color signature   yellow default
      color attachment  brightyellow default
      color markers     brightred default
      color quoted      green default
      color tilde       blue default
      color tree        red default

Other recommended terminal apps with dark colors by default:

- https://ranger.github.io/
- http://hisham.hm/htop/
- https://github.com/andreasvc/cplay/
