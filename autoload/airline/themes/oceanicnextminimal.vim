" ============================================================
" oceanicnext
" Author: Mike Hartington
" ============================================================

" {{{ Colors
  let s:base00 = ['#1b2b34', '235']
  let s:base01 = ['#343d46', '237']
  let s:base02 = ['#4f5b66', '240']
  let s:base03 = ['#65737e', '243']
  let s:base04 = ['#a7adba', '145']
  let s:base05 = ['#c0c5ce', '251']
  let s:base06 = ['#cdd3de', '252']
  let s:base07 = ['#d8dee9', '253']
  let s:red    = ['#ec5f67', '203'] "red
  let s:orange = ['#f99157', '209'] "orange
  let s:yellow = ['#fac863', '221'] "yellow
  let s:green  = ['#99c794', '114'] "green
  let s:cyan   = ['#62b3b2',  '73'] "cyan
  let s:blue   = ['#6699cc',  '68'] "blue
  let s:purple = ['#c594c5', '176'] "purple
  let s:brown  = ['#ab7967', '137'] "brown
  let s:white  = ['#ffffff',  '15'] "white
" }}}

let s:normal1   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:normal2   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:normal3   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]

let s:inactive1 = [s:base03[0], s:base01[0], s:base07[1], s:base03[1]]
let s:inactive2 = [s:base03[0], s:base01[0], s:base07[1], s:base03[1]]
let s:inactive3 = [s:base03[0], s:base01[0], s:base07[1], s:base03[1]]

let s:insert1   = [s:green[0],  s:base01[0], s:white[1],  s:base01[1]]
let s:insert2   = [s:green[0],  s:base01[0], s:base07[1], s:base01[1]]
let s:insert3   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]

let s:replace1  = [s:red[0],    s:base01[0], s:red[1],    s:base01[1]]
let s:replace2  = [s:red[0],    s:base01[0], s:red[1],    s:base01[1]]
let s:replace3  = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]

let s:visual1   = [s:orange[0], s:base01[0], s:base07[1], s:orange[1]]
let s:visual2   = [s:orange[0], s:base01[0], s:base07[1], s:base03[1]]
let s:visual3   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]

let s:ctrlp1    = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:ctrlp2    = [s:base03[0], s:base01[0], s:base03[1], s:base01[1]]
let s:ctrlp3    = [s:blue[0],   s:base02[0],  s:blue[1],   s:base02[1]]

let s:warning   = [s:orange[0], s:base01[0], s:orange[1], s:base01[1]]
let s:error     = [s:red[0],    s:base01[0], s:red[1],    s:base01[1]]

let g:airline#themes#oceanicnextminimal#palette = {}
let g:airline#themes#oceanicnextminimal#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
let g:airline#themes#oceanicnextminimal#palette.normal.airline_warning = s:warning
let g:airline#themes#oceanicnextminimal#palette.normal.airline_error = s:error
let g:airline#themes#oceanicnextminimal#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
let g:airline#themes#oceanicnextminimal#palette.insert.airline_warning = s:warning
let g:airline#themes#oceanicnextminimal#palette.insert.airline_error = s:error
let g:airline#themes#oceanicnextminimal#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)
let g:airline#themes#oceanicnextminimal#palette.replace.airline_warning = s:warning
let g:airline#themes#oceanicnextminimal#palette.replace.airline_error = s:error
let g:airline#themes#oceanicnextminimal#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)
let g:airline#themes#oceanicnextminimal#palette.visual.airline_warning = s:warning
let g:airline#themes#oceanicnextminimal#palette.visual.airline_error = s:error
let g:airline#themes#oceanicnextminimal#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
let g:airline#themes#oceanicnextminimal#palette.inactive.airline_warning = s:warning
let g:airline#themes#oceanicnextminimal#palette.inactive.airline_error = s:error

let g:airline#themes#oceanicnextminimal#palette.tabline = {
      \ 'airline_tab': [s:base02[0], s:base01[0], s:base02[1], s:base01[1]],
      \ 'airline_tabsel': [s:base07[0], s:base02[0], s:base07[1], s:base02[1]],
      \ 'airline_tabhid': [s:base03[0], s:base01[0], s:base03[1], s:base01[1]],
      \ 'airline_tabmod': [s:cyan[0], s:base02[0], s:cyan[1], s:base02[1]],
      \ 'airline_tabmod_unsel':[s:cyan[0], s:base01[0], s:cyan[1], s:base01[1]],
      \ 'airline_tablabel':[s:base01[0], s:base01[0], s:base01[1], s:base01[1]],
      \}

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#oceanicnextminimal#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:ctrlp1, s:ctrlp2, s:ctrlp3)
