" ============================================================
" oceanicnext
" Author: Mike Hartington
" ============================================================

" {{{ Colors
  let s:base00=['#1b2b34', '235']
  let s:base01=['#343d46', '237']
  let s:base02=['#4f5b66', '240']
  let s:base03=['#65737e', '243']
  let s:base04=['#a7adba', '145']
  let s:base05=['#c0c5ce', '251']
  let s:base06=['#cdd3de', '252']
  let s:base07=['#d8dee9', '253']
  let s:base08=['#ec5f67', '203']
  let s:base09=['#f99157', '209']
  let s:base0A=['#fac863', '221']
  let s:base0B=['#99c794', '114']
  let s:base0C=['#62b3b2', '73']
  let s:base0D=['#6699cc', '68']
  let s:base0E=['#c594c5', '176']
  let s:base0F=['#ab7967', '137']
  let s:base10=['#ffffff', '15']
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

let g:airline#themes#oceanicnext#palette = {}
let g:airline#themes#oceanicnext#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
let g:airline#themes#oceanicnext#palette.normal.airline_warning = s:warning
let g:airline#themes#oceanicnext#palette.normal.airline_error = s:error
let g:airline#themes#oceanicnext#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
let g:airline#themes#oceanicnext#palette.insert.airline_warning = s:warning
let g:airline#themes#oceanicnext#palette.insert.airline_error = s:error
let g:airline#themes#oceanicnext#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)
let g:airline#themes#oceanicnext#palette.replace.airline_warning = s:warning
let g:airline#themes#oceanicnext#palette.replace.airline_error = s:error
let g:airline#themes#oceanicnext#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)
let g:airline#themes#oceanicnext#palette.visual.airline_warning = s:warning
let g:airline#themes#oceanicnext#palette.visual.airline_error = s:error
let g:airline#themes#oceanicnext#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
let g:airline#themes#oceanicnext#palette.inactive.airline_warning = s:warning
let g:airline#themes#oceanicnext#palette.inactive.airline_error = s:error


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#oceanicnext#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:ctrlp1, s:ctrlp2, s:ctrlp3)
