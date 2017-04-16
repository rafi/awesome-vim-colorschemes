
"    ███████╗██╗███████╗██████╗ ██████╗  █████╗
"    ██╔════╝██║██╔════╝██╔══██╗██╔══██╗██╔══██╗
"    ███████╗██║█████╗  ██████╔╝██████╔╝███████║
"    ╚════██║██║██╔══╝  ██╔══██╗██╔══██╗██╔══██║
"    ███████║██║███████╗██║  ██║██║  ██║██║  ██║
"    ╚══════╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝


" A Terminal Vim colorscheme
" Author:       Alessandro Yorba
" Script URL:   https://github.com/AlessandroYorba/Sierra
" License:      MIT

" Copyright (c) 2017 Alessandro Yorba
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

"=================================================================================
" SIERRA TERMINAL:
"=================================================================================
"     Foreground    #e4e4e4             |      Selection     #875f5f             |
"     Background    #303030             |      Selected Text #1e2834             |
"     Bold          #ffffff             |                                        |
"     Links         #005cbb             |                                        |
"     CursorColor   #e4e4e4             |                                        |
"     CursorText    #303030             |                                        |
"=================================================================================
" ANSI COLORS:                                                                   |
"=================================================================================
"---------------------------------------|-----------------------------------------
"     NORMAL        Hex          xterm  |      BRIGHT        Hex          xterm  |
"---------------------------------------|-----------------------------------------
"     Black         #303030      0      |      brBlack       #686868      8      |
"     Red           #af5f5f      1      |      brRed         #af5f5f      9      |
"     Green         #d75f5f      2      |      brGreen       #d75f5f      10     |
"     Yellow        #87d7d7      3      |      brYellow      #87d7d7      11     |
"     Blue          #af8787      4      |      brBlue        #af8787      12     |
"     Magenta       #dfaf87      5      |      brMagenta     #dfaf87      13     |
"     Cyan          #ffafaf      6      |      brCyan        #ffafaf      14     |
"     White         #e4e4e4      7      |      brWhite       #e4e4e4      15     |
"---------------------------------------|-----------------------------------------
"=================================================================================

"=================================================================================
" SETUP:
"=================================================================================

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

"================================================================================
" SET DEFAULT PARAMETERS:
"================================================================================

let g:colors_name="sierra"

if !exists("g:sierra_Sunset")
    let g:sierra_Sunset = 0
endif

if !exists("g:sierra_Twilight")
    let g:sierra_Twilight = 0
endif

if !exists("g:sierra_Midnight")
    let g:sierra_Midnight = 0
endif

if !exists("g:sierra_Pitch")
    let g:sierra_Pitch = 0
endif

if !exists("g:sierra_Clear_Skies")
    let g:sierra_Clear_Skies = 0
endif

if !exists("g:sierra_Nevada")
    let g:sierra_Nevada = 0
endif

if !exists("g:sierra_Campfire")
    let g:sierra_Campfire = 0
endif

"================================================================================
" CAMPFIRE:
"================================================================================
if g:sierra_Campfire
    let sierra_Hour = strftime("%H")
    "Day: 7am - 5pm
    if 7 <= sierra_Hour && sierra_Hour < 17
        let g:sierra_Sunset = 0
        let g:sierra_Twilight = 0
        let g:sierra_Midnight = 0
        let g:sierra_Pitch = 0
    "Sunset: 5pm - 7pm
    elseif 17 <= sierra_Hour && sierra_Hour < 19
        let g:sierra_Sunset = 1
        let g:sierra_Twilight = 0
        let g:sierra_Midnight = 0
        let g:sierra_Pitch = 0
    "Twilight: 7pm - 9pm
    elseif 19 <= sierra_Hour && sierra_Hour < 21
        let g:sierra_Sunset = 0
        let g:sierra_Twilight = 1
        let g:sierra_Midnight = 0
        let g:sierra_Pitch = 0
    "Midnight: 9pm - 12am
    elseif 21 <= sierra_Hour && sierra_Hour < 24
        let g:sierra_Sunset = 0
        let g:sierra_Twilight = 0
        let g:sierra_Midnight = 1
        let g:sierra_Pitch = 0
    "Pitch: 12am - 7am
    else
        let g:sierra_Sunset = 0
        let g:sierra_Twilight = 0
        let g:sierra_Midnight = 0
        let g:sierra_Pitch = 1
    endif
endif
"================================================================================
" SIERRA HIGHLIGHTING:
"================================================================================

highlight! Operator               guifg=#af8787  guibg=NONE     gui=NONE       ctermfg=138    ctermbg=NONE  cterm=NONE
highlight! Constant               guifg=#d78787  guibg=NONE     gui=NONE       ctermfg=174    ctermbg=NONE  cterm=NONE
highlight! String                 guifg=#ffafaf  guibg=NONE     gui=NONE       ctermfg=217    ctermbg=NONE  cterm=NONE
highlight! Function               guifg=#87d7d7  guibg=NONE     gui=NONE       ctermfg=116    ctermbg=NONE  cterm=NONE
highlight! Statement              guifg=#87afaf  guibg=NONE     gui=NONE       ctermfg=109    ctermbg=NONE  cterm=NONE
highlight! PreProc                guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight! Special                guifg=#dfaf87  guibg=NONE     gui=NONE       ctermfg=180    ctermbg=NONE  cterm=NONE
highlight! Question               guifg=#dfaf5f  guibg=NONE     gui=NONE       ctermfg=179    ctermbg=NONE  cterm=NONE
highlight! Underlined             guifg=#87afd7  guibg=NONE     gui=NONE       ctermfg=110    ctermbg=NONE  cterm=NONE
highlight! WarningMsg             guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight! Error                  guifg=#d75f5f  guibg=NONE     gui=reverse    ctermfg=167    ctermbg=NONE  cterm=reverse
highlight! SignColumn             guifg=#87af87  guibg=NONE     gui=NONE       ctermfg=108    ctermbg=NONE  cterm=NONE
highlight! Visual                 guifg=#eeeeee  guibg=#875f5f  gui=NONE       ctermfg=255    ctermbg=95    cterm=NONE
highlight! Search                 guifg=#eeeeee  guibg=#5f8787  gui=NONE       ctermfg=255    ctermbg=66    cterm=NONE
highlight! PmenuSbar              guifg=NONE     guibg=NONE     gui=NONE       ctermfg=NONE   ctermbg=NONE  cterm=NONE
highlight! DiffAdd                guifg=#afafd7  guibg=NONE     gui=reverse    ctermfg=146    ctermbg=NONE  cterm=reverse
highlight! Todo                   guifg=#eeeeee  guibg=#1c1c1c  gui=reverse    ctermfg=255    ctermbg=234   cterm=reverse
highlight! DiffChange             guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
highlight! DiffText               guifg=#8787af  guibg=NONE     gui=reverse    ctermfg=103    ctermbg=NONE  cterm=reverse
highlight! DiffDelete             guifg=#af5f5f  guibg=NONE     gui=reverse    ctermfg=131    ctermbg=NONE  cterm=reverse
highlight! SpellBad               guifg=#ff0000  guibg=NONE     gui=undercurl  ctermfg=196    ctermbg=NONE  cterm=undercurl
highlight! SpellLocal             guifg=#5f875f  guibg=NONE     gui=undercurl  ctermfg=65     ctermbg=NONE  cterm=undercurl
highlight! SpellCap               guifg=#87afff  guibg=NONE     gui=undercurl  ctermfg=111    ctermbg=NONE  cterm=undercurl
highlight! SpellRare              guifg=#ff8700  guibg=NONE     gui=undercurl  ctermfg=208    ctermbg=NONE  cterm=undercurl
highlight! CursorLineNr           guifg=#5f8787  guibg=NONE     gui=reverse    ctermfg=66     ctermbg=NONE cterm=reverse

highlight! link Directory         PreProc
highlight! link Title             PreProc
highlight! link htmlItalic        PreProc
highlight! link ErrorMsg          PreProc
highlight! link Type              PreProc
highlight! link MatchParen        Visual
highlight! link WildMenu          Visual
highlight! link ModeMsg           Statement
highlight! link htmlArg           Constant
highlight! link FoldColumn        Identifier
highlight! link Identifier        Function
highlight! link htmlStatement     Function
highlight! link MoreMsg           Question
highlight! link SpecialKey        Underlined
highlight! link PmenuThumb        PmenuSbar

"================================================================================
" DAY:
"================================================================================
if 1
    highlight! Normal               guifg=#e4e4e4  guibg=#303030  gui=NONE     ctermfg=254   ctermbg=236   cterm=NONE
    highlight! CursorLine           guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE
    highlight! StatusLine           guifg=#eeeeee  guibg=#262626  gui=NONE     ctermfg=255   ctermbg=235   cterm=NONE
    highlight! StatusLineNC         guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight! Comment              guifg=#767676  guibg=NONE     gui=NONE     ctermfg=243   ctermbg=NONE  cterm=NONE
    highlight! SpecialComment       guifg=#767676  guibg=NONE     gui=reverse  ctermfg=243   ctermbg=NONE  cterm=reverse
    highlight! TabLineFill          guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE

    highlight! link VertSplit       StatusLineNC
    highlight! link TabLine         StatusLineNC
    highlight! link Pmenu           StatusLineNC
    highlight! link LineNr          StatusLineNC
    highlight! link NonText         Comment
    highlight! link Folded          Comment
    highlight! link TabLineSel      StatusLine
    highlight! link PmenuSel        StatusLine
    highlight! link CursorColumn    CursorLine
    highlight! link ColorColumn     CursorLine
    highlight! link VimCommentTitle SpecialComment
endif

"================================================================================
" SUNSET:
"================================================================================
if g:sierra_Sunset
    highlight! Normal               guifg=#dfdfdf  guibg=#262626  gui=NONE     ctermfg=188   ctermbg=235   cterm=NONE
    highlight! CursorLine           guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE
    highlight! StatusLine           guifg=#eeeeee  guibg=#1c1c1c  gui=NONE     ctermfg=255   ctermbg=234   cterm=NONE
    highlight! StatusLineNC         guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight! Comment              guifg=#6c6c6c  guibg=NONE     gui=NONE     ctermfg=242   ctermbg=NONE  cterm=NONE
    highlight! SpecialComment       guifg=#6c6c6c  guibg=NONE     gui=reverse  ctermfg=242   ctermbg=NONE  cterm=reverse
    highlight! TabLineFill          guifg=NONE     guibg=#1c1c1c  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE

    highlight! link VertSplit       StatusLineNC
    highlight! link TabLine         StatusLineNC
    highlight! link Pmenu           StatusLineNC
    highlight! link LineNr          StatusLineNC
    highlight! link NonText         Comment
    highlight! link Folded          Comment
    highlight! link TabLineSel      StatusLine
    highlight! link PmenuSel        StatusLine
    highlight! link CursorColumn    CursorLine
    highlight! link ColorColumn     CursorLine
    highlight! link VimCommentTitle SpecialComment
endif

"================================================================================
" TWILIGHT:
"================================================================================
if g:sierra_Twilight
    highlight! Normal               guifg=#dfdfdf  guibg=#1c1c1c  gui=NONE     ctermfg=188   ctermbg=234   cterm=NONE
    highlight! CursorLine           guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight! StatusLine           guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight! StatusLineNC         guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight! Comment              guifg=#626262  guibg=NONE     gui=NONE     ctermfg=241   ctermbg=NONE  cterm=NONE
    highlight! SpecialComment       guifg=#626262  guibg=NONE     gui=reverse  ctermfg=241   ctermbg=NONE  cterm=reverse
    highlight! TabLineFill          guifg=NONE     guibg=#121212  gui=NONE     ctermfg=NONE  ctermbg=233   cterm=NONE

    highlight! link VertSplit       StatusLineNC
    highlight! link TabLine         StatusLineNC
    highlight! link Pmenu           StatusLineNC
    highlight! link LineNr          StatusLineNC
    highlight! link NonText         Comment
    highlight! link Folded          Comment
    highlight! link TabLineSel      StatusLine
    highlight! link PmenuSel        StatusLine
    highlight! link CursorColumn    CursorLine
    highlight! link ColorColumn     CursorLine
    highlight! link VimCommentTitle SpecialComment
endif

"================================================================================
" MIDNIGHT:
"================================================================================
if g:sierra_Midnight
    highlight! Normal               guifg=#dfdfdf  guibg=#121212  gui=NONE     ctermfg=188   ctermbg=233   cterm=NONE
    highlight! CursorLine           guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE
    highlight! StatusLine           guifg=#eeeeee  guibg=#1c1c1c  gui=none     ctermfg=255   ctermbg=234   cterm=none
    highlight! StatusLineNC         guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight! Comment              guifg=#585858  guibg=NONE     gui=NONE     ctermfg=240   ctermbg=NONE  cterm=NONE
    highlight! SpecialComment       guifg=#585858  guibg=NONE     gui=reverse  ctermfg=240   ctermbg=NONE  cterm=reverse
    highlight! TabLineFill          guifg=NONE     guibg=#1c1c1c  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE

    highlight! link VertSplit       StatusLineNC
    highlight! link TabLine         StatusLineNC
    highlight! link Pmenu           StatusLineNC
    highlight! link LineNr          StatusLineNC
    highlight! link NonText         Comment
    highlight! link Folded          Comment
    highlight! link TabLineSel      StatusLine
    highlight! link PmenuSel        StatusLine
    highlight! link CursorColumn    CursorLine
    highlight! link ColorColumn     CursorLine
    highlight! link VimCommentTitle SpecialComment
endif

"================================================================================
" PITCH:
"================================================================================
if g:sierra_Pitch
    highlight! Normal               guifg=#dfdfdf  guibg=#080808  gui=NONE     ctermfg=188   ctermbg=232   cterm=NONE
    highlight! CursorLine           guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16   cterm=NONE
    highlight! StatusLine           guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight! StatusLineNC         guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight! Comment              guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE
    highlight! SpecialComment       guifg=#4e4e4e  guibg=NONE     gui=reverse  ctermfg=239   ctermbg=NONE  cterm=reverse
    highlight! TabLineFill          guifg=NONE     guibg=NONE     gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE

    highlight! link VertSplit       StatusLineNC
    highlight! link TabLine         StatusLineNC
    highlight! link Pmenu           StatusLineNC
    highlight! link LineNr          StatusLineNC
    highlight! link NonText         Comment
    highlight! link Folded          Comment
    highlight! link TabLineSel      StatusLine
    highlight! link PmenuSel        StatusLine
    highlight! link CursorColumn    CursorLine
    highlight! link ColorColumn     CursorLine
    highlight! link VimCommentTitle SpecialComment
endif

"================================================================================
" NEVADA:
"================================================================================
if g:sierra_Nevada
    highlight! MatchParen         guifg=#ffffff  guibg=#000000  gui=underline  ctermfg=231  ctermbg=16  cterm=underline
endif

"================================================================================
" CLEAR SKIES:
"================================================================================
if g:sierra_Clear_Skies
    highlight! CursorLine         guifg=NONE  guibg=NONE  gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
endif
