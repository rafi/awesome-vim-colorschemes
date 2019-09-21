" ==============================================================================
" Name:       purify
" Author:     Kyoz
" Repository: https://github.com/kyoz/purify/
" License:    The MIT License (MIT)
" Copyright:  Kyoz (banminkyoz@gmail.com)
" 
" Clean and beautiful colorscheme for vim (neovim)
" ==============================================================================

" Color Pallete {{{

" Purify is based on 10 main colors

" +--------------------------------+
" |  Color Name  | Hex     | cterm |
" |--------------+---------+-------|
" | Black        | #282C34 | 235   |
" |--------------+---------+-------|
" | White        | #FFFFFF | 15    |
" |--------------+---------+-------|
" | Red          | #FF0000 | 196   |
" |--------------+---------+-------|
" | Green        | #5FFF87 | 84    |
" |--------------+---------+-------|
" | Blue         | #5FAFFF | 75    |
" |--------------+---------+-------|
" | Yellow       | #FFFF87 | 228   |
" |--------------+---------+-------|
" | Pink         | #FF79C6 | 212   |
" |--------------+---------+-------|
" | Salmon       | #FF875F | 209   |
" |--------------+---------+-------|
" | Pulple       | #AF87FF | 141   |
" |--------------+---------+-------|
" | Dark yellow  | #D19A66 | 173   |
" |--------------+---------+-------|

" }}}

let s:override_colors = get(g:, 'purify_override_colors', {})

let s:colors = {
    \ 'black':          get(s:override_colors, 'black',          { 'gui': '#282C34', 'cterm': '235' }),
    \ 'white':          get(s:override_colors, 'white',          { 'gui': '#FFFFFF', 'cterm': '15' }),
    \ 'red':            get(s:override_colors, 'red',            { 'gui': '#FF0000', 'cterm': '196' }),
    \ 'green':          get(s:override_colors, 'green',          { 'gui': '#5FFF87', 'cterm': '84' }),
    \ 'blue':           get(s:override_colors, 'blue',           { 'gui': '#5FAFFF', 'cterm': '75' }),
    \ 'yellow':         get(s:override_colors, 'yellow',         { 'gui': '#FFFF87', 'cterm': '228' }),
    \ 'pink':           get(s:override_colors, 'pink',           { 'gui': '#FF79C6', 'cterm': '212' }),
    \ 'salmon':         get(s:override_colors, 'salmon',         { 'gui': '#FF875F', 'cterm': '209' }),
    \ 'purple':         get(s:override_colors, 'purple',         { 'gui': '#AF87FF', 'cterm': '141' }),
    \ 'dark_yellow':    get(s:override_colors, 'dark_yellow',    { 'gui': '#D19A66', 'cterm': '173' }),
    \ 'comment_grey':   get(s:override_colors, 'comment_grey',   { 'gui': '#5F5F87', 'cterm': '61' }),
    \ 'cursor_grey':    get(s:override_colors, 'cursor_grey',    { 'gui': '#2C323C', 'cterm': '236' }),
    \ 'gutter_grey_fg': get(s:override_colors, 'gutter_grey_fg', { 'gui': '#4B5263', 'cterm': '238' }),
    \ 'blur_grey':      get(s:override_colors, 'blur_grey',      { 'gui': '#3B4048', 'cterm': '238' }),
    \ 'menu_grey':      get(s:override_colors, 'menu_grey',      { 'gui': '#3E4452', 'cterm': '237' }),
    \ 'visual_grey':    get(s:override_colors, 'visual_grey',    { 'gui': '#3E4452', 'cterm': '237' }),
    \ 'visual_black':   get(s:override_colors, 'visual_black',   { 'gui': 'NONE', 'cterm': 'NONE' }),
    \ 'none':           get(s:override_colors, 'none',           { 'gui': 'NONE', 'cterm': 'NONE' })
\ }

function! purify#get_colors()
    return s:colors
endfunction
