<p align="center"><a href="https://www.nordtheme.com/ports/vim" target="_blank"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/develop/assets/images/ports/vim/repository-hero.svg?sanitize=true"/></a></p>

<p align="center"><a href="https://github.com/arcticicestudio/nord-vim/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-vim.svg?style=flat-square&label=Release&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0"/></a> <a href="https://www.nordtheme.com/docs/ports/vim"><img src="https://img.shields.io/github/release/arcticicestudio/nord-vim.svg?style=flat-square&label=Docs&colorA=4c566a&colorB=88c0d0&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI%2BCiAgICA8cGF0aCBmaWxsPSIjZDhkZWU5IiBkPSJNMTMuNzQ2IDIuODEzYS42Ny42NyAwIDAgMC0uNTU5LS4xMzNMOCAzLjg0OGwtNS4xODgtMS4xOGEuNjY5LjY2OSAwIDAgMC0uNTcuMTMzLjY3Ny42NzcgMCAwIDAtLjI0Mi41MzF2OC4xMzNjLS4wMDguMzIuMjEuNTk4LjUyLjY2OGw1LjMzMiAxLjE5OWguMjk2bDUuMzMyLTEuMmEuNjY4LjY2OCAwIDAgMCAuNTItLjY2N1YzLjMzMmEuNjU5LjY1OSAwIDAgMC0uMjU0LS41MnpNMy4zMzIgNC4xNjhsNCAuODk4djYuNzY2bC00LS44OTh6bTkuMzM2IDYuNzY2bC00IC44OThWNS4wNjZsNC0uODk4em0wIDAiLz4KPC9zdmc%2BCg%3D%3D"/></a> <a href="https://github.com/arcticicestudio/nord-vim/blob/develop/CHANGELOG.md#050"><img src="https://img.shields.io/github/release/arcticicestudio/nord-vim.svg?style=flat-square&label=Changelog&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0"/></a></p>

<p align="center"><a href="https://github.com/arcticicestudio/styleguide-markdown/releases/latest" target="_blank"><img src="https://img.shields.io/github/release/arcticicestudio/styleguide-markdown.svg?style=flat-square&label=Markdown%20Style%20Guide&colorA=4c566a&colorB=88c0d0&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzOSIgaGVpZ2h0PSIzOSIgdmlld0JveD0iMCAwIDM5IDM5Ij48cGF0aCBmaWxsPSJub25lIiBzdHJva2U9IiNEOERFRTkiIHN0cm9rZS13aWR0aD0iMyIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBkPSJNMS41IDEuNWgzNnYzNmgtMzZ6Ii8%2BPHBhdGggZmlsbD0iI0Q4REVFOSIgZD0iTTIwLjY4MyAyNS42NTVsNS44NzItMTMuNDhoLjU2Nmw1Ljg3MyAxMy40OGgtMS45OTZsLTQuMTU5LTEwLjA1Ni00LjE2MSAxMC4wNTZoLTEuOTk1em0tMi42OTYgMGwtMTMuNDgtNS44NzJ2LS41NjZsMTMuNDgtNS44NzJ2MS45OTVMNy45MzEgMTkuNWwxMC4wNTYgNC4xNnoiLz48L3N2Zz4%3D"/></a> <a href="https://github.com/arcticicestudio/styleguide-git/releases/latest" target="_blank"><img src="https://img.shields.io/github/release/arcticicestudio/styleguide-git.svg?style=flat-square&label=Git%20Style%20Guide&logoColor=eceff4&colorA=4c566a&colorB=88c0d0&logo=git"/></a></p>

<p align="center">An arctic, north-bluish clean and elegant <a href="https://www.vim.org">Vim</a> color theme.</p>

<p align="center">Designed for a fluent and clear workflow based on the <a href="https://www.nordtheme.com">Nord</a> color palette.</p>

<p align="center"><a href="https://www.nordtheme.com/ports/vim" target="_blank"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/develop/assets/images/ports/vim/overview-go.png"/></a></p>

Build for Vim's terminal- and GUI mode with _true colors_ with support for many third-party syntax and UI plugins including bundled themes for [lightline.vim][gh-itchyny/lightline.vim] and [vim-airline][gh-vim-airline/vim-airline].

## Getting Started

Visit the [official website][nord-home] to learn all about the [syntax highlighting][nord-home#syntax] features, details and elements of [UI and editor elements][nord-home#editor-details], the [various theme configurations][nord-home#configurations] and the [support for many plugins][nord-home#plugin-support].

Learn about the [installation and activation][nord-docs-home-install], how to [configure][nord-docs-home-config] and [customize][nord-docs-home-custom] the theme from the [official documentations][nord-docs-home].

### Quick Start

Thanks to existing plugin/_runtimepath_ managers for Vim, Nord Vim can be installed for all platforms and the various variants/forks of Vim in a uniform way within a few lines of codes. The recommended manager is [vim-plug][gh-junegunn/vim-plug], but any other manager like [pathogen][gh-tpope/vim-pathogen] or [Vundle][gh-vundlevim/vundle.vim] can also be used.

To automatically download and activate Nord Vim, follow the install instructions for [vim-plug][gh-junegunn/vim-plug] and

1. add `Plug 'arcticicestudio/nord-vim'` to your [`vimrc`][vimhelp-vimrc] within _vim-plug_'s plugin loading function
2. run the `:PlugInstall` command in Vim
3. activate the theme by adding `colorscheme nord` to the [vimrc][vimhelp-vimrc] or change it on-the-fly by running `:colorscheme nord`

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/develop/assets/images/ports/vim/installation-vim-plug.png"/></p>

See the Nord Vim's documentation for [more installation options][nord-docs-home-install] and how to [set it up manually][nord-docs-home-install#manual].

## Features

<p align="center"><strong>A unified UI and editor syntax element design provides a clutter-free and fluidly merging appearance.</strong><br /><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/develop/assets/images/ports/vim/overview-go-nerdtree.png"/></p>

<p align="center"><strong>Small details with unobtrusive styles for popular and common code editor features like search result marker and brace matching — designed to get out of your way with a visually attractive appearance.</strong><br /><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/develop/assets/images/ports/vim/editor-search-highlighting.png"/></p>

<p align="center"><strong>Support for a wide range of programming languages — from bundled plugins up to many popular syntax and UI third-party plugins.</strong><br /><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/develop/assets/images/ports/vim/syntax-javascript-react-hook.png"/></p>

## Contributing

Nord is an open source project and we love to receive contributions from the [community][nord-comm]!

There are many ways to contribute, from [writing- and improving documentation and tutorials][nord-contrib-guide-docs], [reporting bugs][nord-contrib-guide-bugs], [submitting enhancement suggestions][nord-contrib-guide-enhance] that can be added to Nord by [submitting pull requests][nord-contrib-guide-pr].

Please take a moment to read Nord's full [contributing guide][nord-contrib-guide] to learn about the development process, the project's used [styleguides][nord-contrib-guide-styles], [branch organization][nord-contrib-guide-branching] and [versioning][nord-contrib-guide-versioning] model.

The guide also includes information about [minimal, complete, and verifiable examples][nord-contrib-guide-mcve] and other ways to contribute to the project like [improving existing issues][nord-contrib-guide-impr-issues] and [giving feedback on issues and pull requests][nord-contrib-guide-feedback].

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/develop/assets/images/nord/repository-footer-separator.svg?sanitize=true" /></p>

<p align="center">Copyright &copy; 2016-present <a href="https://www.arcticicestudio.com" target="_blank">Arctic Ice Studio</a> and <a href="https://www.svengreb.de" target="_blank">Sven Greb</a></p>

<p align="center"><a href="https://github.com/arcticicestudio/nord-vim/blob/develop/LICENSE.md"><img src="https://img.shields.io/static/v1.svg?style=flat-square&label=License&message=MIT&logoColor=eceff4&logo=github&colorA=4c566a&colorB=88c0d0"/></a></p>

[gh-itchyny/lightline.vim]: https://github.com/itchyny/lightline.vim
[gh-junegunn/vim-plug]: https://github.com/junegunn/vim-plug
[gh-tpope/vim-pathogen]: https://github.com/tpope/vim-pathogen
[gh-vim-airline/vim-airline]: https://github.com/vim-airline/vim-airline
[gh-vundlevim/vundle.vim]: https://github.com/tpope/vim-pathogen
[nord-comm]: https://www.nordtheme.com/community
[nord-contrib-guide-branching]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md#branch-organization
[nord-contrib-guide-bugs]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md#bug-reports
[nord-contrib-guide-docs]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md#documentations
[nord-contrib-guide-enhance]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md#enhancement-suggestions
[nord-contrib-guide-feedback]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md#give-feedback-on-issues-and-pull-requests
[nord-contrib-guide-impr-issues]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md#improve-issues
[nord-contrib-guide-mcve]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md#mcve
[nord-contrib-guide-pr]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md#pull-requests
[nord-contrib-guide-styles]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md#styleguides
[nord-contrib-guide-versioning]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md#versioning
[nord-contrib-guide]: https://github.com/arcticicestudio/nord/blob/develop/CONTRIBUTING.md
[nord-docs-home-config]: https://www.nordtheme.com/docs/ports/vim/configuration
[nord-docs-home-custom]: https://www.nordtheme.com/docs/ports/vim/customization
[nord-docs-home-install]: https://www.nordtheme.com/docs/ports/vim/installation
[nord-docs-home-install#manual]: https://www.nordtheme.com/docs/ports/vim/installation#manual
[nord-docs-home]: https://www.nordtheme.com/docs/ports/vim
[nord-home]: https://www.nordtheme.com/ports/vim
[nord-home#configurations]: https://www.nordtheme.com/ports/vim#configurations
[nord-home#editor-details]: https://www.nordtheme.com/ports/vim#editor-details
[nord-home#plugin-support]: https://www.nordtheme.com/ports/vim#plugin-support
[nord-home#syntax]: https://www.nordtheme.com/ports/vim#syntax
[vimhelp-vimrc]: https://vimhelp.org/starting.txt.html#vimrc
