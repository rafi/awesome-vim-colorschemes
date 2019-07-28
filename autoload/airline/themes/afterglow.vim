" Author:   Danilo Augusto
" Script:   Afterglow (vim-airline version)
" License:  MIT
" Date:     2017-02-27

let s:gui00 = "#1e1e1e" " ANSI Black
let s:gui01 = "#b05279" " ANSI Red
let s:gui02 = "#b4c973" " ANSI Green
let s:gui03 = "#e5b567" " ANSI Yellow
let s:gui04 = "#6c99bb" " ANSI Blue
let s:gui05 = "#b05279" " ANSI Magenta
let s:gui06 = "#9e86c8" " ANSI Cyan
let s:gui07 = "#d6d6d6" " ANSI White
let s:gui08 = "#87875f"
let s:gui09 = "#af1600"
let s:gui0A = "#af875f"
let s:gui0B = "#878787"
let s:gui0C = "#af5f00"
let s:gui0D = "#5f5f87"
let s:gui0E = "#afd7d7"
let s:gui0F = "#dfdfaf"

let s:cterm00 = "234"
let s:cterm01 = "91"
let s:cterm02 = "180"
let s:cterm03 = "179"
let s:cterm04 = "67"
let s:cterm05 = "132"
let s:cterm06 = "109"
let s:cterm07 = "252"
let s:cterm08 = "101"
let s:cterm09 = "138"
let s:cterm0A = "180"
let s:cterm0B = "102"
let s:cterm0C = "130"
let s:cterm0D = "60"
let s:cterm0E = "152"
let s:cterm0F = "187"

let s:guiWhite = "#ffffff"
let s:guiGray = "#666666"
let s:guiDarkGray = "#545454"
let s:ctermWhite = "231"
let s:ctermGray = "243"
let s:ctermDarkGray = "240"

" Depends on g:afterglow_blackout
if !exists( "g:afterglow_blackout")
    let g:afterglow_blackout = 0
endif
if g:afterglow_blackout
    let s:guiAlmostBlack = "#121212"
    let s:ctermAlmostBlack = "233"
else
    let s:guiAlmostBlack = "#2a2a2a"
    let s:ctermAlmostBlack = "235"
endif

let g:airline#themes#afterglow#palette = {}
let s:modified = { 'airline_c': [s:gui03, '', s:cterm03, '', ''] }

" Normal mode
let s:N1 = [s:gui07, s:gui0D, s:cterm07, s:cterm0D]
let s:N2 = [s:guiWhite, s:gui04, s:ctermWhite, s:cterm04]
let s:N3 = [s:gui04, s:guiAlmostBlack, s:cterm04, s:ctermAlmostBlack]
let g:airline#themes#afterglow#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#afterglow#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [s:guiWhite, s:gui0B, s:ctermWhite, s:cterm0B]
let s:I2 = s:N2
let s:I3 = [s:guiWhite, s:gui0D, s:ctermWhite, s:cterm0D]
let g:airline#themes#afterglow#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#afterglow#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [s:guiWhite, s:gui05, s:ctermWhite, s:cterm05]
let s:V2 = s:N2
let s:V3 = s:I3
let g:airline#themes#afterglow#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#afterglow#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [s:gui08, s:gui00, s:cterm08, s:cterm00]
let s:R2 = s:N2
let s:R3 = [s:guiWhite, s:gui05, s:ctermWhite, s:cterm05]
let g:airline#themes#afterglow#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#afterglow#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [s:guiGray, s:guiAlmostBlack, s:ctermGray, s:ctermAlmostBlack]
let s:IN2 = [s:guiGray, s:guiAlmostBlack, s:ctermGray, s:ctermAlmostBlack]
let s:IN3 = [s:guiGray, s:guiAlmostBlack, s:ctermGray, s:ctermAlmostBlack]
let g:airline#themes#afterglow#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#afterglow#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
    finish
endif

let s:CP1 = [s:guiWhite, s:gui01, s:ctermWhite, s:cterm01]
let s:CP2 = [s:guiWhite, s:gui03, s:ctermWhite, s:cterm01]
let s:CP3 = [s:guiWhite, s:gui0D, s:ctermWhite, s:cterm0D]
