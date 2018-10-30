" Bootstrap ===================================================================

" Let's store all the colors in a dictionary.
let s:c = {}

" Base colors.
let s:c.base0 = { 'gui': '#0c1014', 'cterm': 232 }
let s:c.base1 = { 'gui': '#11151c', 'cterm': 233 }
let s:c.base2 = { 'gui': '#091f2e', 'cterm': 17  }
let s:c.base3 = { 'gui': '#0a3749', 'cterm': 18  }
let s:c.base4 = { 'gui': '#1e6479', 'cterm': 31  }
let s:c.base5 = { 'gui': '#599cab', 'cterm': 81  }
let s:c.base6 = { 'gui': '#99d1ce', 'cterm': 122 }
let s:c.base7 = { 'gui': '#d3ebe9', 'cterm': 194 }

" Other colors.
let s:c.red     = { 'gui': '#c23127', 'cterm': 124 }
let s:c.orange  = { 'gui': '#d26937', 'cterm': 166 }
let s:c.yellow  = { 'gui': '#edb443', 'cterm': 214 }
let s:c.magenta = { 'gui': '#888ca6', 'cterm': 67  }
let s:c.violet  = { 'gui': '#4e5166', 'cterm': 60  }
let s:c.blue    = { 'gui': '#195466', 'cterm': 24  }
let s:c.cyan    = { 'gui': '#33859E', 'cterm': 44  }
let s:c.green   = { 'gui': '#2aa889', 'cterm': 78  }

let g:airline#themes#gotham256#palette = {}

" Just remember:
" [guifg, guibg, ctermfg, ctermbg, opts]
function! s:Array(fg, bg, ...)
  let result = [s:c[a:fg].gui, s:c[a:bg].gui, s:c[a:fg].cterm, s:c[a:bg].cterm]

  for opt in a:000
    call add(result, opt)
  endfor

  return result
endfunction



" Normal mode =================================================================

" Colors.
let s:N1 = s:Array('base6', 'blue')
let s:N2 = s:Array('base5', 'base2')
let s:N3 = s:Array('blue', 'base1')

let g:airline#themes#gotham256#palette.normal =
      \ airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Overrides for when the buffer is modified in normal mode.
let g:airline#themes#gotham256#palette.normal_modified = {
      \ 'airline_c': s:Array('magenta', 'base1', '')
      \ }


" Insert mode ==================================================================

" Colors.
let s:I1 = s:Array('base2', 'green')
let s:I2 = s:Array('base6', 'base3')
let s:I3 = s:Array('blue', 'base1')

" Override for when increased contrast is enabled
if get(g:, 'gotham_airline_emphasised_insert', 1)
  let s:I1 = s:Array('base2', 'yellow')
endif

let g:airline#themes#gotham256#palette.insert =
      \ airline#themes#generate_color_map(s:I1, s:I2, s:I3)

" Overrides for when the buffer is modified in insert mode.
let g:airline#themes#gotham256#palette.insert_modified = {
      \ 'airline_c': s:Array('magenta', 'base1', '')
      \ }

" Overrides for when the paste is toggled in insert mode.
let g:airline#themes#gotham256#palette.insert_paste = {
      \ 'airline_a': [s:I1[0], s:c.orange.gui, s:I1[2], s:c.orange.cterm, ''] ,
      \ 'airline_z': [s:I1[0], s:c.orange.gui, s:I1[2], s:c.orange.cterm, ''] ,
      \ }



" Replace mode ================================================================

" Colors.
let s:R1 = s:Array('base2', 'orange')
let s:R2 = s:Array('base6', 'base3')
let s:R3 = s:Array('blue', 'base1')

let g:airline#themes#gotham256#palette.replace =
      \ airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Overrides for when the buffer is modified in normal mode.
let g:airline#themes#gotham256#palette.replace_modified = {
      \ 'airline_c': s:Array('magenta', 'base1', '')
      \ }



" Visual mode =================================================================

" Colors.
let s:V1 = s:Array('base2', 'magenta')
let s:V2 = s:Array('base6', 'base3')
let s:V3 = s:N3

let g:airline#themes#gotham256#palette.visual =
      \ airline#themes#generate_color_map(s:V1, s:V2, s:V3)

" Overrides for when the buffer is modified.
let g:airline#themes#gotham256#palette.visual_modified =
      \ g:airline#themes#gotham256#palette.normal_modified



" Inactive mode (when the focus is not on the window) =========================

let s:IA1 = s:Array('blue', 'base2')
let s:IA2 = s:Array('blue', 'base1')
let s:IA3 = s:Array('blue', 'base0')

let g:airline#themes#gotham256#palette.inactive =
      \ airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

let g:airline#themes#gotham256#palette.inactive_modified = {
      \ 'airline_c': [s:c.magenta.gui, '' , s:c.magenta.cterm, '', ''],
      \ }



" Accents =====================================================================

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a 'red' accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#gotham256#palette.accents = {
      \ 'red': [s:c.red.gui, '', s:c.red.cterm, '']
      \ }



" CtrlP =======================================================================

" Finish here if CtrlP isn't installed.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = s:Array('base6', 'base2', '')
let s:CP2 = s:Array('base6', 'blue', '')
let s:CP3 = s:Array('base7', 'green', 'bold')

let g:airline#themes#gotham256#palette.ctrlp =
      \ airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

