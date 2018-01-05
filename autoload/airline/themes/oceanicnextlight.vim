" ============================================================
" oceanicnextlightlight
" Author: Mike Hartington
" ============================================================

" {{{ Colors
  let s:base00 =['#d8dee9', '253']
  let s:base01 =['#cdd3de', '252']
  let s:base02 =['#c0c5ce', '251']
  let s:base03 =['#a7adba', '145']
  let s:base04 =['#65737e', '243']
  let s:base05 =['#4f5b66', '240']
  let s:base06 =['#343d46', '237']
  let s:base07 =['#1b2b34', '235']
  let s:base08 =['#b40b11', '124']
  let s:base09 =['#b4713d', '131']
  let s:base0A =['#a48c32', '137']
  let s:base0B =['#869235', '101']
  let s:base0C =['#5b9c90', '72']
  let s:base0D =['#526f93', '60']
  let s:base0E =['#896a98', '96']
  let s:base0F =['#9a806d', '101']
  let s:base10 =['#ffffff', '15']
" }}}

let s:normal1   = [s:base10[0], s:base0C[0], s:base10[1], s:base0C[1]]
let s:normal2   = [s:base07[0], s:base03[0], s:base07[1], s:base03[1]]
let s:normal3   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:inactive1 = [s:base07[0], s:base03[0], s:base07[1], s:base03[1]]
let s:inactive2 = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:inactive3 = [s:base03[0], s:base01[0], s:base03[1], s:base01[1]]
let s:insert1   = [s:base10[0], s:base0B[0], s:base10[1], s:base0B[1]]
let s:insert2   = [s:base07[0], s:base03[0], s:base07[1], s:base03[1]]
let s:insert3   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:replace1  = [s:base10[0], s:base08[0], s:base10[1], s:base08[1]]
let s:replace2  = [s:base07[0], s:base03[0], s:base07[1], s:base03[1]]
let s:replace3  = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:visual1   = [s:base10[0], s:base09[0], s:base10[1], s:base09[1]]
let s:visual2   = [s:base07[0], s:base03[0], s:base07[1], s:base03[1]]
let s:visual3   = [s:base07[0], s:base01[0], s:base07[1], s:base01[1]]
let s:ctrlp1    = [s:base10[0], s:base01[0], s:base10[1], s:base01[1]]
let s:ctrlp2    = [s:base10[0], s:base03[0], s:base10[1], s:base03[1]]
let s:ctrlp3    = [s:base10[0], s:base0D[0], s:base10[1], s:base0D[1]]
let s:warning   = [s:base09[0], s:base01[0], s:base09[1], s:base01[1]]
let s:error     = [s:base08[0], s:base01[0], s:base08[1], s:base01[1]]

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
