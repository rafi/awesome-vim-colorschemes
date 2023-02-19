![vim-dogrun](./docs/images/repo-banner.png)

[![CI](https://img.shields.io/github/actions/workflow/status/wadackel/vim-dogrun/ci.yml?branch=main&style=flat-square)](https://github.com/wadackel/vim-dogrun/actions)
[![LICENSE](https://img.shields.io/github/license/wadackel/vim-dogrun?style=flat-square)](./LICENSE)

> A dark Neovim / Vim colorscheme for the GUI and 256 / true-color terminals.

## Features

- No configuration are required to start using it.
- Support 256 colors terminal.
- Supports Neovim's built-in [language server client](https://neovim.io/doc/user/lsp.html).
- Supports [lightline.vim](https://github.com/itchyny/lightline.vim) theme.
- Supports [vim-clap](https://github.com/liuchengxu/vim-clap) theme.
- Supports [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
- Loading speed is increased by precompiled script. (powered by Rust)

Check [here](#supported-filetypes--plugins) for a list of supported file types and plugins :muscle:

## Gallery

### Neovim (GUI)

![Neovim](./docs/images/neovim.png)

### Vim (with 256 colors)

![Vim](./docs/images/vim.png)

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

If you want, specify `dogrun` to `colorscheme`.

```vim
let g:lightline = {
  \ 'colorscheme': 'dogrun',
  \ }
```

#### vim-clap theme

If you want, specify `dogrun` to `g:clap_theme`.

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
- `graphql` ([vim-graphql](https://github.com/jparise/vim-graphql))
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
- [dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [easymotion](https://github.com/easymotion/vim-easymotion)
- [fern.vim](https://github.com/lambdalisue/fern.vim)
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [fugitive.vim](https://github.com/tpope/vim-fugitive)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [lightline.vim](https://github.com/itchyny/lightline.vim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [vim-clap](https://github.com/liuchengxu/vim-clap)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-lsp](https://github.com/prabirshrestha/vim-lsp)
- [vimfiler](https://github.com/Shougo/vimfiler.vim)

## Inspired

Many thanks for the following projects:

- [vim-color-spring-night](https://github.com/rhysd/vim-color-spring-night)

## License

[MIT License © wadackel](./LICENSE)
