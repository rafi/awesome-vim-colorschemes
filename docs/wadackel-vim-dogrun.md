![vim-dogrun](./docs/images/repo-banner.png)

[![Actions Status](https://github.com/wadackel/vim-dogrun/workflows/CI/badge.svg)](https://github.com/wadackel/vim-dogrun/actions)

> A dark Neovim / Vim colorscheme for the GUI and 256 / true-color terminals.

## Gallery

### Neovim (GUI)

![Neovim](./docs/images/neovim.png)

### Vim (with 256 colors)

![Vim](./docs/images/vim.png)

## Features

- No configuration are required to start using it.
- Support 256 colors terminal.
- Supports [lightline.vim](https://github.com/itchyny/lightline.vim) theme.
- Supports [vim-clap](https://github.com/liuchengxu/vim-clap) theme.
- Loading speed in increased by precompiled script.

Check [here](#supported-filetypes--plugins) for a list of supported file types and plugins :muscle:

## Installation

This is an example of installation using [vim-plug](https://github.com/junegunn/vim-plug).

```vim
Plug 'wadackel/vim-dogrun'
```

## Usage

Add the following settings to your `$MYVIMRC` (`.vimrc` or `init.vim`).

```vim
colorscheme dogrun
```

### Options

#### lightline theme

If you want, specify `dogrun` for `colorscheme`.

```vim
let g:lightline = {
  \ 'colorscheme': 'dogrun',
  \ }
```

#### vim-clap theme

If you want, specify `dogrun` for `g:clap_theme`.

```vim
let g:clap_theme = 'dogrun'
```

## Supported Filetypes & Plugins

There are not many Ftypes and Plugins supported by `dogrun` yet.  
From now on, we will gradually support it :dog:

### Filetypes

- `c`
- `cpp`
- `cs`
- `diff`
- `go` ([vim-go](https://github.com/fatih/vim-go))
- `html`
- `javascript`
- `json`
- `make`
- `markdown` ([vim-markdown](https://github.com/tpope/vim-markdown))
- `python`
- `ruby`
- `rust` ([rust.vim](https://github.com/rust-lang/rust.vim))
- `toml` ([vim-toml](https://github.com/cespare/vim-toml))
- `typescript` ([yats.vim](https://github.com/HerringtonDarkholme/yats.vim))
- `vim`
- `yaml`
- `zsh`

### Plugins

- [ALE](https://github.com/dense-analysis/ale)
- [clever-f.vim](https://github.com/rhysd/clever-f.vim)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [conflict-marker.vim](https://github.com/rhysd/conflict-marker.vim)
- [defx-git](https://github.com/kristijanhusak/defx-git)
- [defx-icons](https://github.com/kristijanhusak/defx-icons)
- [easymotion](https://github.com/easymotion/vim-easymotion)
- [fern.vim](https://github.com/lambdalisue/fern.vim)
- [fugitive.vim](https://github.com/tpope/vim-fugitive)
- [lightline.vim](https://github.com/itchyny/lightline.vim)
- [vim-clap](https://github.com/liuchengxu/vim-clap)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vimfiler](https://github.com/Shougo/vimfiler.vim)

## Inspired

Many thanks for the following projects:

- [vim-color-spring-night](https://github.com/rhysd/vim-color-spring-night)

## License

[MIT License © wadackel](./LICENSE)
