" Minimalist Airline - A Material Color Scheme Darker
"
" Author:       Diki Ananta <diki1aap@gmail.com>
" Repository:   https://github.com/dikiaap/minimalist
" Version:      1.6
" License:      MIT

" Normal Mode
let s:N1 = [ '#E4E4E4', '#3A3A3A', 254, 237 ]
let s:N2 = [ '#E4E4E4', '#4E4E4E', 254, 239 ]
let s:N3 = [ '#EEEEEE', '#262626', 255, 235 ]

" Inactive Mode
let s:IA = [ '#666666', s:N3[1], 242, s:N3[3] ]

" Warning Mode
let s:WI = [ '#1C1C1C', '#FFAF5F', 234, 215 ]

" Error Mode
let s:ER = [ s:WI[0], '#D75F5F', s:WI[2], 167 ]

" Terminal Mode
let s:TE = [ s:WI[0], s:N1[1], s:N1[2], s:N1[3] ]

" Reverse Mode
let s:NR = [ s:N2[1], s:N2[0], s:N2[3], s:N2[2], 'bold' ]

let g:airline#themes#minimalist#palette = {}

" Generate
let g:airline#themes#minimalist#palette.normal   = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#minimalist#palette.insert   = g:airline#themes#minimalist#palette.normal
let g:airline#themes#minimalist#palette.visual   = g:airline#themes#minimalist#palette.normal
let g:airline#themes#minimalist#palette.replace  = g:airline#themes#minimalist#palette.normal
let g:airline#themes#minimalist#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#minimalist#palette.normal.airline_warning  = s:WI
let g:airline#themes#minimalist#palette.normal.airline_error    = s:ER
let g:airline#themes#minimalist#palette.normal.airline_term     = s:TE

" Accents
let g:airline#themes#minimalist#palette.accents = { 'red': [ s:ER[1], '', s:ER[3], '' ] }

" CtrlP
if get(g:, 'loaded_ctrlp', 0)
    let g:airline#themes#minimalist#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:N3, s:N2, s:NR)
endif
