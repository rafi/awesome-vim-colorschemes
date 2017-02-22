let g:airline#themes#orbital#palette = {}

let s:N1 = ['#87afd7', '#262626', 110, 235]
let s:N2 = ['#af875f', '#262626', 137, 235]
let s:N3 = ['#ffd7af', '#262626', 223, 235]
let s:N4 = ['#af875f', '#000000', 137,   0]
let s:N5 = ['#5f87d7', '#000000',  68,   0]
let s:N6 = ['#5f5f5f', '#000000',  59,   0]
let g:airline#themes#orbital#palette.normal =
    \ airline#themes#generate_color_map(s:N1, s:N2, s:N3, s:N4, s:N5, s:N6)
let g:airline#themes#orbital#palette.normal_modified = {
    \ 'airline_a': [ '#5fafff', '#262626', 75, 235]
    \ }

let s:I1 = ['#262626', '#bcbcbc', 235, 250]
let s:I2 = ['#af875f', '#262626', 137, 235]
let s:I3 = ['#ffd7af', '#262626', 223, 235]
let g:airline#themes#orbital#palette.insert =
    \ airline#themes#generate_color_map(s:I1, s:I2, s:I3, s:N4, s:N5, s:N6)
let g:airline#themes#orbital#palette.insert_paste = {
            \ 'airline_a': ['#262626', '#e4e4e4', 235, 254],
            \ }

let s:R1 = ['#e4e4e4', '#005faf', 254,  25]
let s:R2 = ['#af875f', '#262626', 137, 235]
let s:R3 = ['#ffd7af', '#262626', 223, 235]
let g:airline#themes#orbital#palette.replace =
    \ airline#themes#generate_color_map(s:R1, s:R2, s:R3, s:N4, s:N5, s:N6)

let s:V1 = ['#000000', '#87afd7',   0, 110]
let s:V2 = ['#af875f', '#262626', 137, 235]
let s:V3 = ['#ffd7af', '#262626', 223, 235]
let g:airline#themes#orbital#palette.visual =
    \ airline#themes#generate_color_map(s:V1, s:V2, s:V3, s:N4, s:N5, s:N6)


let s:IA1 = ['#a8a8a8', '#262626', 248, 235, '']
let s:IA2 = ['#5f5f5f', '#262626',  59, 235, '']
let s:IA3 = ['#5f5f5f', '#262626',  59, 235, '']
let g:airline#themes#orbital#palette.inactive =
  \ airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3, s:IA3, s:IA3, s:IA3)

let g:airline#themes#orbital#palette.accents = {
            \ 'red': [ '#e4e4e4', '', 254, '', 'bold' ]
            \ }

let g:airline#themes#orbital#palette.tabline = {
      \ 'airline_tab':     ['#949494', '#262626', 246, 235, ''],
      \ 'airline_tabsel':  ['#d7af87', '#262626', 180, 235, ''],
      \ 'airline_tabtype': ['#d7af87', '#262626', 180, 235, ''],
      \ 'airline_tabmod':  ['#d7af87', '#262626', 180, 235, ''],
      \ 'airline_tab_right':     ['#949494', '#262626', 246, 235, ''],
      \ 'airline_tabsel_right':  ['#d7af87', '#262626', 180, 235, ''],
      \ 'airline_tabmod_right':  ['#d7af87', '#262626', 180, 235, ''],
      \}

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = ['#d7af87', '#262626', 180, 235]
let s:CP2 = ['#bcbcbc', '#262626', 250, 235]
let s:CP3 = ['#ffd7af', '#262626', 223, 235]
let g:airline#themes#orbital#palette.ctrlp =
    \ airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

