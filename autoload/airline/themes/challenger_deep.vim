" Colors
let s:black           = { "gui": "#212121", "cterm": "0", "cterm16" : "0" }
let s:medium_gray     = { "gui": "#767676", "cterm": "243", "cterm16" : "243" }
let s:white           = { "gui": "#F3F3F3", "cterm": "15", "cterm16" : "15" }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231", "cterm16" : "231" }
let s:light_black     = { "gui": "#424242", "cterm": "8", "cterm16" : "8" }
let s:lighter_black   = { "gui": "#545454", "cterm": "240", "cterm16" : "240" }

" lighter shadows and darker grays
let s:subtle_black  = { "gui": "#303030", "cterm": "236", "cterm16" : "236" }
let s:light_gray    = { "gui": "#B2B2B2", "cterm": "249", "cterm16" : "249" }
let s:lighter_gray  = { "gui": "#C6C6C6", "cterm": "251", "cterm16" : "251" }

" flat colors:
let s:asphalt = { "gui": "#1e1c31", "cterm": "233", "cterm16": "NONE"}
let s:asphalt_subtle= { "gui": "#100E23", "cterm": "232", "cterm16": "8"}
let s:dark_asphalt = { "gui": "#565575", "cterm": "236", "cterm16": "0"}

let s:red = { "gui": "#ff8080", "cterm": "204", "cterm16": "1"}
let s:dark_red = { "gui": "#ff5458", "cterm": "203", "cterm16": "9"}

let s:green = { "gui": "#95ffa4", "cterm": "120", "cterm16": "2"}
let s:dark_green = { "gui": "#62d196", "cterm": "119", "cterm16": "10"}

let s:yellow = { "gui": "#ffe9aa", "cterm": "228", "cterm16": "3"}
let s:dark_yellow = { "gui": "#ffb378", "cterm": "215", "cterm16": "11"}

let s:blue = { "gui": "#91ddff", "cterm": "159", "cterm16": "4"}
let s:dark_blue = { "gui": "#65b2ff", "cterm": "75", "cterm16": "12"}

let s:purple = { "gui": "#c991e1", "cterm": "141", "cterm16": "5"}
let s:dark_purple = { "gui": "#906cff", "cterm": "135", "cterm16": "13"}

let s:cyan = { "gui": "#aaffe4", "cterm": "122", "cterm16": "6"}
let s:dark_cyan = { "gui": "#63f2f1", "cterm": "121", "cterm16": "14"}

let s:clouds = { "gui": "#cbe3e7", "cterm": "253", "cterm16": "7"}
let s:dark_clouds = { "gui": "#a6b3cc", "cterm": "252", "cterm16": "15"}

let s:bg              = s:asphalt
let s:bg_subtle       = s:asphalt_subtle
let s:bg_dark         = s:dark_asphalt
let s:norm            = s:clouds
let s:norm_subtle     = s:dark_clouds
let s:visual          = s:bg_dark
let g:airline#themes#challenger_deep#palette = {}

let s:N1   = [ s:bg_subtle.gui, s:cyan.gui, s:bg_subtle.cterm16, s:cyan.cterm16 ]
let s:N2   = [ s:bg_subtle.gui, s:dark_cyan.gui, s:bg_subtle.cterm16, s:dark_cyan.cterm16 ]
let s:N3   = [ s:white.gui, s:bg_subtle.gui, s:white.cterm16, s:bg_subtle.cterm16 ]
let g:airline#themes#challenger_deep#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#challenger_deep#palette.normal_modified = {
      \ 'airline_c': [ s:N3[0] , s:N3[1] , s:N3[2] , s:N3[3], ''     ] ,
      \ }

let s:I1 = [ s:bg_subtle.gui , s:red.gui , s:bg_subtle.cterm16 , s:red.cterm16]
let s:I2 = [ s:bg_subtle.gui , s:dark_red.gui , s:bg_subtle.cterm16 , s:dark_red.cterm16]
let s:I3   = [ s:white.gui, s:bg_subtle.gui, s:white.cterm16, s:bg_subtle.cterm16 ]
let g:airline#themes#challenger_deep#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#challenger_deep#palette.insert_modified = {
      \ 'airline_c': [ s:white.gui , s:bg_subtle.gui , s:white.cterm16, s:bg_subtle.cterm16      , ''     ] ,
      \ }
let g:airline#themes#challenger_deep#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , s:yellow.gui , s:I1[2] , s:yellow.cterm16     , ''     ] ,
      \ }


let g:airline#themes#challenger_deep#palette.replace = copy(g:airline#themes#challenger_deep#palette.insert)
let g:airline#themes#challenger_deep#palette.replace.airline_a = [ s:I2[0]   , s:yellow.gui , s:I2[2] , s:yellow.cterm16     , ''     ]
let g:airline#themes#challenger_deep#palette.replace_modified = g:airline#themes#challenger_deep#palette.insert_modified


let s:V1 = [ s:bg_subtle.gui , s:yellow.gui , s:bg_subtle.cterm16 , s:yellow.cterm16]
let s:V2 = [ s:bg_subtle.gui , s:dark_yellow.gui , s:bg_subtle.cterm16 , s:dark_yellow.cterm16]
let s:V3   = [ s:white.gui, s:bg_subtle.gui, s:white.cterm16, s:bg_subtle.cterm16 ]
let g:airline#themes#challenger_deep#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#challenger_deep#palette.visual_modified = {
      \ 'airline_c': [ s:V3[0] , s:V3[1] , s:V3[2] , s:V3[3], ''     ] ,
      \ }

let s:IA1 = [ s:bg_subtle.gui , s:purple.gui , s:bg_subtle.cterm16 , s:purple.cterm16]
let s:IA2 = [ s:bg_subtle.gui , s:dark_purple.gui , s:bg_subtle.cterm16 , s:dark_purple.cterm16]
let s:IA3   = [ s:white.gui, s:bg_subtle.gui, s:white.cterm16, s:bg_subtle.cterm16 ]
let g:airline#themes#challenger_deep#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#challenger_deep#palette.inactive_modified = {
      \ 'airline_c': [ s:IA3[0] , s:IA3[1] , s:IA3[2] , s:IA3[3], ''     ] ,
      \ }


let s:WI = [ s:yellow.gui, s:dark_red.gui, s:yellow.cterm16, s:dark_red.cterm16 ]
let g:airline#themes#challenger_deep#palette.normal.airline_warning = [
     \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
     \ ]

let g:airline#themes#challenger_deep#palette.normal_modified.airline_warning =
    \ g:airline#themes#challenger_deep#palette.normal.airline_warning

let g:airline#themes#challenger_deep#palette.insert.airline_warning =
    \ g:airline#themes#challenger_deep#palette.normal.airline_warning

let g:airline#themes#challenger_deep#palette.insert_modified.airline_warning =
    \ g:airline#themes#challenger_deep#palette.normal.airline_warning

let g:airline#themes#challenger_deep#palette.visual.airline_warning =
    \ g:airline#themes#challenger_deep#palette.normal.airline_warning

let g:airline#themes#challenger_deep#palette.visual_modified.airline_warning =
    \ g:airline#themes#challenger_deep#palette.normal.airline_warning

let g:airline#themes#challenger_deep#palette.replace.airline_warning =
    \ g:airline#themes#challenger_deep#palette.normal.airline_warning

let g:airline#themes#challenger_deep#palette.replace_modified.airline_warning =
    \ g:airline#themes#challenger_deep#palette.normal.airline_warning

