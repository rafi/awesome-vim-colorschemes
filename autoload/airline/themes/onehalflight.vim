" ==============================================================================
"   Name:        One Half Light
"   Author:      Son A. Pham <sp@sonpham.me>
"   Url:         https://github.com/sonph/onehalf
"   License:     The MIT License (MIT)
"
"   A light vim-airline theme based on Atom's One, best used with the onehalf
"   vim colorschemes. See github.com/sonph/onehalf for installation
"   instructions, a dark theme and colorschemes for other editors/terminals.
"
"   For documentation, see :h airline-themes or vim-airline's dark.vim theme at
"   https://github.com/vim-airline/vim-airline/blob/master/autoload/airline/themes/dark.vim
"
" ==============================================================================


" _g: gui, _c: cterm
let s:dark_g = '#969696'
let s:dark_c = 245
let s:med_lo_g = '#e3e3e3'
let s:med_lo_c = 254
let s:med_hi_g = '#f0f0f0'
let s:med_hi_c = 255
let s:light_g = '#fafafa'
let s:light_c = 231

let s:green_g = '#50a14f'
let s:green_c = 71
let s:blue_g = '#0184bc'
let s:blue_c = 31
let s:yellow_g = '#c18401'
let s:yellow_c = 136
let s:red_g = '#e45649'
let s:red_c = 167


let g:airline#themes#onehalflight#palette = {}


" Normal mode
" Array format: [guifg, guibg, ctermfg, ctermbg, opts]
let s:normal_outer = [s:light_g, s:green_g, s:light_c, s:green_c]
let s:normal_middle = [s:dark_g, s:med_hi_g, s:dark_c, s:med_hi_c]
let s:normal_inner = [s:green_g, s:light_g, s:green_c, s:light_c]
let s:normal_inner_modified = [s:yellow_g, s:med_hi_g, s:yellow_c, s:med_hi_c]
let g:airline#themes#onehalflight#palette.normal = 
    \ airline#themes#generate_color_map(s:normal_outer, s:normal_middle, s:normal_inner)
let g:airline#themes#onehalflight#palette.normal_modified =
    \ airline#themes#generate_color_map(s:normal_outer, s:normal_middle, s:normal_inner_modified)


" Insert mode
let s:insert_outer = [s:light_g, s:blue_g, s:light_c, s:blue_c]
let s:insert_middle = s:normal_middle
let s:insert_inner = [s:blue_g, s:light_g, s:blue_c, s:light_c]
let g:airline#themes#onehalflight#palette.insert = 
    \ airline#themes#generate_color_map(s:insert_outer, s:insert_middle, s:insert_inner)
let g:airline#themes#onehalflight#palette.insert_modified = 
    \ copy(g:airline#themes#onehalflight#palette.normal_modified)


" Replace mode
let s:replace_outer = [s:light_g, s:red_g, s:light_c, s:red_c]
let s:replace_middle = s:normal_middle
let s:replace_inner = [s:red_g, s:light_g, s:red_c, s:light_c]
let g:airline#themes#onehalflight#palette.replace =
    \ airline#themes#generate_color_map(s:replace_outer, s:replace_middle, s:replace_inner)
let g:airline#themes#onehalflight#palette.replace_modified = 
    \ copy(g:airline#themes#onehalflight#palette.insert_modified)


" Visual mode
let s:visual_outer = [s:light_g, s:yellow_g, s:light_c, s:yellow_c]
let s:visual_middle = s:normal_middle
let s:visual_inner = [s:yellow_g, s:light_g, s:yellow_c, s:light_c]
let g:airline#themes#onehalflight#palette.visual = 
    \ airline#themes#generate_color_map(s:visual_outer, s:visual_middle, s:visual_inner)
let g:airline#themes#onehalflight#palette.visual_modified = 
    \ copy(g:airline#themes#onehalflight#palette.insert_modified)


" Inactive window
let s:inactive = [s:dark_g, s:med_hi_g, s:dark_c, s:med_hi_c]
let s:inactive_modified = [s:yellow_g, '', s:yellow_c, '']
let g:airline#themes#onehalflight#palette.inactive = 
    \ airline#themes#generate_color_map(s:inactive, s:inactive, s:inactive)
let g:airline#themes#onehalflight#palette.inactive_modified = 
    \ airline#themes#generate_color_map(s:inactive, s:inactive, s:inactive_modified)
