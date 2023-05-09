```{python}
              ___           ___           ___                       ___           ___     
             /\__\         /\  \         /\__\                     /\  \         /\  \    
            /:/ _/_        \:\  \       /:/ _/_       ___         /::\  \        \:\  \   
           /:/ /\__\        \:\  \     /:/ /\  \     /\__\       /:/\:\  \        \:\  \  
          /:/ /:/  /    ___  \:\  \   /:/ /::\  \   /:/__/      /:/  \:\  \   _____\:\  \ 
         /:/_/:/  /    /\  \  \:\__\ /:/_/:/\:\__\ /::\  \     /:/__/ \:\__\ /::::::::\__\
         \:\/:/  /     \:\  \ /:/  / \:\/:/ /:/  / \/\:\  \__  \:\  \ /:/  / \:\~~\~~\/__/
          \::/__/       \:\  /:/  /   \::/ /:/  /   ~~\:\/\__\  \:\  /:/  /   \:\  \      
           \:\  \        \:\/:/  /     \/_/:/  /       \::/  /   \:\/:/  /     \:\  \     
            \:\__\        \::/  /        /:/  /        /:/  /     \::/  /       \:\__\    
             \/__/         \/__/         \/__/         \/__/       \/__/         \/__/
        
```

Vim Fusion is a neutral dark 256-color colorscheme for Vim/NeoVim. Vim Fusion works optimally with [vim-polyglot](https://github.com/sheerun/vim-polyglot) thanks to some of its syntax highlighting definitions; the installation of this plugin is not mandatory but keep in mind that some of the highlightings may not work exactly as shown when it is not installed. 

![](https://raw.githubusercontent.com/lfenzo/vim-fusion/main/screenshots/cover.png)

## :hammer_and_wrench: Installation

For any of the methods described below add the following line to your `.vimrc` (or `init.vim`):

```console
colorscheme fusion
```
### Manual Installation

Clone the vim-fusion repo and add the file `fusion.vim` to the `colors` directory inside `.vim`. In case you don't have it: `mkdir ~/.vim/colors`. For NeoVim the same applies but for the `nvim` directory inside `~/.config/`.

### Using vim-plug

Inside the ``call plug#begin( ) ... plug#end`` add the following:

```console
Plug 'lfenzo/vim-fusion'
```
And then, `:w`, `:source %` and `:PlugInstall`.

## :money_with_wings: Donate

It's up to you, if you really enjoyed this colorscheme feel free to pay me a coffee (or perhaps a beer)...

**ETH:** `0x0C66c04c8098720998B2049C7a6bF6BbB751cb8e`

## :camera_flash: Screenshots

### Python
![](https://raw.githubusercontent.com/lfenzo/vim-fusion/main/screenshots/python.png)

### C++
![](https://raw.githubusercontent.com/lfenzo/vim-fusion/main/screenshots/cplusplus.png)

### Javascript 
![](https://raw.githubusercontent.com/lfenzo/vim-fusion/main/screenshots/javascript.png)

### LaTeX
![](https://raw.githubusercontent.com/lfenzo/vim-fusion/main/screenshots/latex.png)

### HTML & CSS
![](https://raw.githubusercontent.com/lfenzo/vim-fusion/main/screenshots/html-css.png)

### JSON & XML
![](https://github.com/lfenzo/vim-fusion/blob/main/screenshots/json-xml.png)
