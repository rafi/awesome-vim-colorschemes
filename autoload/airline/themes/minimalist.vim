" Minimalist Airline - A Material Colorscheme Darker
"
" Author:       Diki Ananta <diki1aap@gmail.com>
" Repository:   https://github.com/dikiaap/minimalist
" Version:      1.4
" License:      MIT

" Normal Mode
let s:N1 = [ '#E4E4E4' , '#3A3A3A' , 254 , 237 ]
let s:N2 = [ '#E4E4E4' , '#4E4E4E' , 254 , 239 ]
let s:N3 = [ '#EEEEEE' , '#262626' , 255 , 235 ]

" Insert Mode
let s:I1 = [ '#E4E4E4' , '#3A3A3A' , 254 , 237 ]
let s:I2 = [ '#E4E4E4' , '#4E4E4E' , 254 , 239 ]
let s:I3 = [ '#EEEEEE' , '#262626' , 255 , 235 ]

" Visual Mode
let s:V1 = [ '#E4E4E4' , '#3A3A3A' , 254 , 237 ]
let s:V2 = [ '#E4E4E4' , '#4E4E4E' , 254 , 239 ]
let s:V3 = [ '#EEEEEE' , '#262626' , 255 , 235 ]

" Replace Mode
let s:R1 = [ '#E4E4E4' , '#3A3A3A' , 254 , 237 ]
let s:R2 = [ '#E4E4E4' , '#4E4E4E' , 254 , 239 ]
let s:R3 = [ '#EEEEEE' , '#262626' , 255 , 235 ]

" Inactive Mode
let s:IA = [ '#666666' , '#262626' , 242 , 235 , '' ]

let g:airline#themes#minimalist#palette = {}
let g:airline#themes#minimalist#palette.normal  = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#minimalist#palette.insert  = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#minimalist#palette.visual  = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#minimalist#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#minimalist#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Warning Mode
let s:WI = [ '#1C1C1C' , '#FFAF5F' , 234 , 215 , '' ]
let g:airline#themes#minimalist#palette.normal.airline_warning = [
        \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
        \ ]
let g:airline#themes#minimalist#palette.insert.airline_warning  = g:airline#themes#minimalist#palette.normal.airline_warning
let g:airline#themes#minimalist#palette.visual.airline_warning  = g:airline#themes#minimalist#palette.normal.airline_warning
let g:airline#themes#minimalist#palette.replace.airline_warning = g:airline#themes#minimalist#palette.normal.airline_warning

" Error Mode
let s:ER = [ '#1C1C1C' , '#D75F5F' , 234 , 167 , '' ]
let g:airline#themes#minimalist#palette.normal.airline_error = [
        \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
        \ ]
let g:airline#themes#minimalist#palette.insert.airline_error    = g:airline#themes#minimalist#palette.normal.airline_error
let g:airline#themes#minimalist#palette.visual.airline_error    = g:airline#themes#minimalist#palette.normal.airline_error
let g:airline#themes#minimalist#palette.replace.airline_error   = g:airline#themes#minimalist#palette.normal.airline_error

" Accents
let g:airline#themes#minimalist#palette.accents = {
        \ 'red': [ '#D75F5F' , '' , 167 , '' ]
        \ }

" CtrlP
if get(g:, 'loaded_ctrlp', 0)
    let g:airline#themes#minimalist#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
            \ [ '#E4E4E4' , '#262626' , 254 , 235 , ''     ],
            \ [ '#E4E4E4' , '#4E4E4E' , 254 , 239 , ''     ],
            \ [ '#585858' , '#E4E4E4' , 240 , 254 , 'bold' ])
endif
