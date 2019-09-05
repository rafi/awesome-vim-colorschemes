" ==============================================================================
" Name:       purify
" Author:     Kyoz
" Repository: https://github.com/kyoz/purify/
" License:    The MIT License (MIT)
" Copyright:  Kyoz (banminkyoz@gmail.com)
" 
" Clean and beautiful colorscheme for vim (neovim)
" ==============================================================================

let g:airline#themes#purify#palette = {}

function! airline#themes#purify#refresh()
    " Define colors
    let s:colors = purify#get_colors()

    let s:black       = s:colors.black
    let s:white       = s:colors.white
    let s:pink        = s:colors.pink
    let s:salmon      = s:colors.salmon
    let s:green       = s:colors.green
    let s:blue        = s:colors.blue
    let s:pink        = s:colors.pink
    let s:visual_grey = s:colors.visual_grey

    " Define palette
    let s:group = airline#themes#get_highlight('vimCommand')

    " NORMAL {{{

    let s:N1 = [s:black.gui, s:blue.gui, s:black.cterm, s:blue.cterm]
    let s:N2 = [s:white.gui, s:visual_grey.gui, s:white.cterm, s:visual_grey.cterm]
    let s:N3 = [s:blue.gui, s:black.gui, s:blue.cterm, '' ]
    let s:N3_modified = [s:blue, s:visual_grey.gui, s:blue.cterm, s:visual_grey.cterm]

    let g:airline#themes#purify#palette.normal =
        \ airline#themes#generate_color_map(s:N1, s:N2, s:N3)
    let g:airline#themes#purify#palette.normal_modified = {
        \ 'airline_c': [ s:group[0], '', s:group[2], '', '' ]
        \ }

    " }}}
    
    " INSERT {{{

    let s:I1 = [s:black.gui, s:green.gui, s:black.cterm, s:green.cterm]
    let s:I2 = s:N2
    let s:I3 = [s:green.gui, s:black.gui, s:green.cterm, '']
    let g:airline#themes#purify#palette.insert = 
        \ airline#themes#generate_color_map(s:I1, s:I2, s:I3)
    let g:airline#themes#purify#palette.insert_modified = 
        \ g:airline#themes#purify#palette.normal_modified

    " }}}

    " REPLACE {{{

    let s:R1 = [ s:black.gui, s:salmon.gui, s:black.cterm, s:salmon.cterm]
    let s:R2 = s:N2
    let s:R3 = [ s:salmon.gui, s:black.gui, s:salmon.cterm, '' ]
    let g:airline#themes#purify#palette.replace =
        \ airline#themes#generate_color_map(s:R1, s:R2, s:R3)
    let g:airline#themes#purify#palette.replace_modified =
        \ g:airline#themes#purify#palette.normal_modified

    " }}}

    " VISUAL {{{

    let s:V1 = [s:black.gui, s:pink.gui, s:black.cterm, s:pink.cterm]
    let s:V2 = s:N2
    let s:V3 = [s:pink.gui, s:black.gui, s:pink.cterm, '']
    let g:airline#themes#purify#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
    let g:airline#themes#purify#palette.visual_modified = g:airline#themes#purify#palette.normal_modified

    " }}}

    " INACTIVE {{{

    let s:IA1 = [s:black.gui, s:white.gui, s:black.cterm, s:white.cterm]
    let s:IA2 = [ s:white.gui, s:visual_grey.gui, s:white.cterm, s:visual_grey.cterm]
    let s:IA3 = s:N2
    let g:airline#themes#purify#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
    let g:airline#themes#purify#palette.inactive_modified = {
        \ 'airline_c': [ s:group[0], '', s:group[2], '', '']
        \ }

    " }}}

    " ACCENT {{{

    let g:airline#themes#purify#palette.accents = {
        \ 'red': [ s:salmon.gui, '', s:salmon.cterm, 0 ]
        \ }

    " }}}

endfunction

call airline#themes#purify#refresh()

