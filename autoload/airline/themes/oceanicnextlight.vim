" ============================================================
" oceanicnextlight
" Author: Mike Hartington
" ============================================================

" {{{ Colors
  let s:base00 = ['#d8dee9', '253']
  let s:base01 = ['#cdd3de', '252']
  let s:base02 = ['#c0c5ce', '251']
  let s:base03 = ['#a7adba', '145']
  let s:base04 = ['#65737e', '243']
  let s:base05 = ['#4f5b66', '240']
  let s:base06 = ['#343d46', '237']
  let s:base07 = ['#1b2b34', '235']
  let s:red    = ['#b40b11', '124'] "red
  let s:orange = ['#b4713d', '131'] "orange
  let s:yellow = ['#a48c32', '137'] "yellow
  let s:green  = ['#869235', '101'] "green
  let s:cyan   = ['#5b9c90',  '72'] "cyan
  let s:blue   = ['#526f93',  '60'] "blue
  let s:purple = ['#896a98',  '96'] "purple
  let s:brown  = ['#9a806d', '101'] "brown
  let s:white  = ['#ffffff',  '15'] "white
  let s:none=['None','None']

" }}}

let s:normal1   = [s:white[0], s:cyan[0], s:white[1], s:cyan[1]]
let s:normal2   = [s:base07[0], s:base03[0], s:base07[1], s:base03[1]]
let s:normal3   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:inactive1 = [s:base07[0], s:base03[0], s:base07[1], s:base03[1]]
let s:inactive2 = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:inactive3 = [s:base03[0], s:base01[0], s:base03[1], s:base01[1]]
let s:insert1   = [s:white[0], s:green[0], s:white[1], s:green[1]]
let s:insert2   = [s:base07[0], s:base03[0], s:base07[1], s:base03[1]]
let s:insert3   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:replace1  = [s:white[0], s:red[0], s:white[1], s:red[1]]
let s:replace2  = [s:base07[0], s:base03[0], s:base07[1], s:base03[1]]
let s:replace3  = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:visual1   = [s:white[0], s:orange[0], s:white[1], s:orange[1]]
let s:visual2   = [s:base07[0], s:base03[0], s:base07[1], s:base03[1]]
let s:visual3   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:ctrlp1    = [s:white[0], s:base01[0], s:white[1], s:base01[1]]
let s:ctrlp2    = [s:white[0], s:base03[0], s:white[1], s:base03[1]]
let s:ctrlp3    = [s:white[0], s:blue[0], s:white[1], s:blue[1]]
let s:warning   = [s:orange[0], s:base01[0], s:orange[1], s:base01[1]]
let s:error     = [s:red[0], s:base01[0], s:red[1], s:base01[1]]

let g:airline#themes#oceanicnextlight#palette = {}
let g:airline#themes#oceanicnextlight#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
let g:airline#themes#oceanicnextlight#palette.normal.airline_warning = s:warning
let g:airline#themes#oceanicnextlight#palette.normal.airline_error = s:error
let g:airline#themes#oceanicnextlight#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
let g:airline#themes#oceanicnextlight#palette.insert.airline_warning = s:warning
let g:airline#themes#oceanicnextlight#palette.insert.airline_error = s:error
let g:airline#themes#oceanicnextlight#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)
let g:airline#themes#oceanicnextlight#palette.replace.airline_warning = s:warning
let g:airline#themes#oceanicnextlight#palette.replace.airline_error = s:error
let g:airline#themes#oceanicnextlight#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)
let g:airline#themes#oceanicnextlight#palette.visual.airline_warning = s:warning
let g:airline#themes#oceanicnextlight#palette.visual.airline_error = s:error
let g:airline#themes#oceanicnextlight#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
let g:airline#themes#oceanicnextlight#palette.inactive.airline_warning = s:warning
let g:airline#themes#oceanicnextlight#palette.inactive.airline_error = s:error

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#oceanicnextlight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:ctrlp1, s:ctrlp2, s:ctrlp3)
