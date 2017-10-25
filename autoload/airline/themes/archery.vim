" >>>--------------------------------------------------------------->
" >>>--------------------------------------------------------------->
"       >>
"      >>->                      >->
"     >> >->     >> >-->    >--> >->        >-->    >> >--> >->   >->
"    >->  >->     >->     >->    >->>->   >>   >->   >->     >-> >->
"   >----->>->    >->    >->     >->  >-> >>--->>->  >->       >-->
"  >->      >->   >->     >->    >>   >-> >>         >->        >->
" >->        >-> >-->       >--> >->  >->  >---->   >-->       >->
"                                                            >->
" >>>--------------------------------------------------------------->
"
" URL:         https://github.com/Badacadabra/vim-archery
" Author:      Baptiste Vannesson <contact@badacadabra.net>
" License:     MIT
" Description: Airline colorscheme inspired by Arch Linux colors
"
" >>>--------------------------------------------------------------->
" >>>--------------------------------------------------------------->

scriptencoding utf-8

" ============================
" COLOR PALETTE
" ============================

let g:airline#themes#archery#palette = {}

let s:gui_blue      = '#0088CC'
let s:gui_lightblue = '#81A3CF'
let s:gui_black     = '#25272C'
let s:gui_gray      = '#282D34'
let s:gui_lightgray = '#53586F'
let s:gui_white     = '#F6F9FC'

let s:cterm_blue      = 4
let s:cterm_lightblue = 12
let s:cterm_black     = 0
let s:cterm_gray      = 8
let s:cterm_lightgray = 7
let s:cterm_white     = 15

" ============================
" MODES
" ============================

" ----------------------------
" Normal
" ----------------------------

let s:N1 = [s:gui_white, s:gui_blue, s:cterm_white, s:cterm_blue]
let s:N2 = [s:gui_black, s:gui_lightblue, s:cterm_black, s:cterm_lightblue]
let s:N3 = [s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray]

let g:airline#themes#archery#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#archery#palette.normal_modified = {
    \ 'airline_c': [s:gui_blue, s:gui_gray, s:cterm_blue, s:cterm_gray, '']
    \ }

" ----------------------------
" Inactive
" ----------------------------

let s:IA1 = [s:gui_black, s:gui_lightgray, s:cterm_black, s:cterm_lightgray]
let s:IA2 = [s:gui_lightgray, s:gui_black, s:cterm_lightgray, s:cterm_black]
let s:IA3 = [s:gui_lightgray, s:gui_gray, s:cterm_lightgray, s:cterm_gray]

let g:airline#themes#archery#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

let g:airline#themes#archery#palette.inactive_modified = {
    \ 'airline_c': [s:gui_lightblue, s:gui_gray, s:cterm_lightblue, s:cterm_gray, '']
    \ }

" ----------------------------
" Insert
" ----------------------------

let s:I1 = [s:gui_black, s:gui_white, s:cterm_black, s:cterm_white]
let s:I2 = [s:gui_black, s:gui_lightblue, s:cterm_black, s:cterm_lightblue]
let s:I3 = [s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray]

let g:airline#themes#archery#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let g:airline#themes#archery#palette.insert_modified = {
    \ 'airline_c': [s:gui_blue, s:gui_gray, s:cterm_blue, s:cterm_gray, '']
    \ }

" ----------------------------
" Replace
" ----------------------------

let s:R1 = [s:gui_black, s:gui_white, s:cterm_black, s:cterm_white]
let s:R2 = [s:gui_black, s:gui_lightblue, s:cterm_black, s:cterm_lightblue]
let s:R3 = [s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray]

let g:airline#themes#archery#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let g:airline#themes#archery#palette.replace_modified = {
    \ 'airline_c': [s:gui_blue, s:gui_gray, s:cterm_blue, s:cterm_gray, '']
    \ }

" ----------------------------
" Visual
" ----------------------------

let s:V1 = [s:gui_black, s:gui_white, s:cterm_black, s:cterm_white]
let s:V2 = [s:gui_black, s:gui_lightblue, s:cterm_black, s:cterm_lightblue]
let s:V3 = [s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray]

let g:airline#themes#archery#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#archery#palette.visual_modified = {
    \ 'airline_c': [s:gui_blue, s:gui_gray, s:cterm_blue, s:cterm_gray, '']
    \ }
