"AUTHOR: Alessandro Yorba
"SCRIPT: https://github.com/AlessandroYorba/Sierra
"
"UPDATED: Thurs Nov 28th, 2020
"CHANGES: Identifier is now Cyan
"
"SUPPORT:
" 256 color terminals, Gui versions of vim, and Termguicolors versions of vim
"
"INSTALL LOCATION:
"Unix users, place sierra.vim in ~/.vim/colors
"Windows users, place sierra.vim in ~\vimfiles\colors

"From your .vimrc add one of the following options
" colorscheme sierra
"
set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name="sierra"

"DARKER GREY BACKGROUND
if !exists("g:sierra_Twilight")
	let g:sierra_Twilight = 0
endif

"ALMOST BLACK BACKGROUND
if !exists("g:sierra_Midnight")
	let g:sierra_Midnight = 0
endif

"BLACK BACKGROUND
if !exists("g:sierra_Pitch")
	let g:sierra_Pitch = 0
endif

"REMOVE BLOCK MATCHPARENS - ADDS UNDERLINE
if !exists("g:sierra_Nevada")
	let g:sierra_Nevada = 0
endif

"TERMINAL COLORS
let g:terminal_ansi_colors = [
	\ '#252525',
	\ '#af5e5e',
	\ '#d75e5e',
	\ '#afd7d7',
	\ '#ae8687',
	\ '#dfae86',
	\ '#ffafaf',
	\ '#dfdfde',
	\ '#6c6b6b',
	\ '#af5e5e',
	\ '#d75e5e',
	\ '#afd7d7',
	\ '#ae8687',
	\ '#dfae86',
	\ '#ffafaf',
	\ '#dfdfde',]

highlight! Grey guifg=#b2b2b2 guibg=NONE gui=NONE ctermfg=249 ctermbg=NONE cterm=NONE
highlight! Grey_Reverse guifg=#767676 guibg=NONE gui=reverse ctermfg=243 ctermbg=NONE cterm=reverse
highlight! Silver_Reverse guifg=#c6c6c6 guibg=NONE gui=reverse ctermfg=251 ctermbg=NONE cterm=reverse
highlight! Cyan guifg=#afd7d7 guibg=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
highlight! Dark_Cyan guifg=#5f8787 guibg=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
highlight! Dark_Cyan_Reverse guifg=#5f8787 guibg=NONE gui=reverse ctermfg=66 ctermbg=NONE cterm=reverse
highlight! Medium_Cyan guifg=#87afaf guibg=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
highlight! Medium_Cyan_Reverse guifg=#87afaf guibg=NONE gui=reverse ctermfg=109 ctermbg=NONE cterm=reverse
highlight! Dark_Red_Reverse guifg=#af5f5f guibg=NONE gui=reverse ctermfg=131 ctermbg=NONE cterm=reverse
highlight! Light_Red guifg=#dfafaf guibg=NONE gui=NONE ctermfg=181 ctermbg=NONE cterm=NONE
highlight! Medium_Red guifg=#d78787 guibg=NONE gui=NONE ctermfg=174 ctermbg=NONE cterm=NONE
highlight! Dark_Red guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
highlight! Red_Reverse guifg=#d75f5f guibg=NONE gui=reverse ctermfg=167 ctermbg=NONE cterm=reverse
highlight! Red guifg=#d75f5f guibg=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
highlight! Orange guifg=#dfaf5f guibg=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
highlight! Dark_Purple guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight! Purple guifg=#af8787 guibg=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE

highlight! link FoldColumn Cyan
highlight! link cssTagName Cyan
highlight! link vimUserFunc Cyan
highlight! link Function Cyan
highlight! link vimFunction Cyan
highlight! link Identifier Cyan

highlight! link vimAutoEventList Medium_Cyan

highlight! link DiffChange Dark_Cyan_Reverse

highlight! link DiffAdd Medium_Cyan_Reverse
highlight! link DiffText Medium_Cyan_Reverse
highlight! link diffAdded Medium_Cyan_Reverse

highlight! link Statement Dark_Purple
highlight! link Conditional Dark_Purple


highlight! link htmlEndTag Red
highlight! link htmlTag Red
highlight! link htmlItalic Red
highlight! link htmlStatement Red
highlight! link Type Red
highlight! link vimAutoCmdSfxList Red
highlight! link PreProc Red
highlight! link cssClassName Red
highlight! link cssIdentifier Red
highlight! link Title Red
highlight! link WarningMsg Red
highlight! link diffBDiffer Red
highlight! link diffCommon Red
highlight! link diffDiffer Red
highlight! link diffIdentical Red
highlight! link diffIsA Red
highlight! link diffNoEOL Red
highlight! link diffOnly Red
highlight! link netrwExe Red

highlight! link Error Red_Reverse
highlight! link ErrorMsg Red_Reverse

highlight! link Label Dark_Red
highlight! link Constant Dark_Red

highlight! link htmlArg Medium_Red
highlight! link Number Medium_Red

highlight! link String Light_Red

highlight! link Special Purple
highlight! link vimCmdSep Purple
highlight! link StorageClass Purple
highlight! link Directory Purple

highlight! link Operator Grey

highlight! link SpecialComment Grey_Reverse
highlight! link VimCommentTitle Grey_Reverse
highlight! link vimCommentTitle Grey_Reverse

highlight! link WildMenu Silver_Reverse
highlight! link Visual Silver_Reverse
highlight! link Search Silver_Reverse

highlight! link DiffDelete Dark_Red_Reverse
highlight! link diffChanged Dark_Red_Reverse
highlight! link diffFile Dark_Red_Reverse
highlight! link diffIndexLine Dark_Red_Reverse
highlight! link diffRemoved Dark_Red_Reverse

highlight! link MoreMsg Orange
highlight! link Question Orange
"TODO:

highlight Underlined guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight MatchParen guifg=#eeeeee guibg=#875f5f gui=NONE ctermfg=255 ctermbg=95 cterm=NONE
highlight ModeMsg guifg=#dfdfdf guibg=NONE gui=NONE ctermfg=188 ctermbg=NONE cterm=NONE
highlight Todo guifg=#eeeeee guibg=#1c1c1c gui=reverse ctermfg=255 ctermbg=234 cterm=reverse
highlight SignColumn guifg=#87af87 guibg=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE

"DARKER GRAY BACKGROUND
if 1
	"COLORS
	highlight Normal guifg=#d0d0d0 guibg=#262626 gui=NONE ctermfg=252 ctermbg=235 cterm=NONE
	highlight Comment guifg=#585858 guibg=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE

	"WINDOW UI
	highlight StatusLine guifg=#eeeeee guibg=#1c1c1c gui=NONE ctermfg=255 ctermbg=234 cterm=NONE
	highlight StatusLineNC guifg=#6c6c6c guibg=#1c1c1c gui=NONE ctermfg=242 ctermbg=234 cterm=NONE
	highlight StatusLineTerm guifg=#eeeeee guibg=#1c1c1c gui=NONE ctermfg=255 ctermbg=234 cterm=NONE
	highlight StatusLineTermNC guifg=#6c6c6c guibg=#1c1c1c gui=NONE ctermfg=242 ctermbg=234 cterm=NONE

	highlight Pmenu guifg=#6c6c6c guibg=#303030 gui=NONE ctermfg=242 ctermbg=236 cterm=NONE
	highlight PmenuSel guifg=#eeeeee guibg=#303030 gui=NONE ctermfg=255 ctermbg=236 cterm=NONE
	highlight PmenuSbar guifg=#303030 guibg=#303030 gui=NONE ctermfg=236 ctermbg=236 cterm=NONE
	highlight PmenuThumb guifg=#303030 guibg=#303030 gui=NONE ctermfg=236 ctermbg=236 cterm=NONE
	highlight TabLine guifg=#6c6c6c guibg=#1c1c1c gui=NONE ctermfg=242 ctermbg=234 cterm=NONE
	highlight TabLineSel guifg=#eeeeee guibg=#1c1c1c gui=NONE ctermfg=255 ctermbg=234 cterm=NONE
	highlight TabLineFill guifg=NONE guibg=#1c1c1c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE

	highlight CursorLineNR guifg=#9e9e9e guibg=#1c1c1c gui=NONE ctermfg=247 ctermbg=234 cterm=NONE
	highlight CursorLine guifg=NONE guibg=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
	highlight CursorColumn guifg=NONE guibg=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
	highlight Folded guifg=#6c6c6c guibg=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
	highlight VertSplit guifg=#3a3a3a guibg=#262626 gui=NONE ctermfg=237 ctermbg=235 cterm=NONE
	highlight LineNr guifg=#4e4e4e guibg=#1c1c1c gui=NONE ctermfg=239 ctermbg=234 cterm=NONE
	highlight NonText guifg=#3a3a3a guibg=NONE gui=NONE ctermfg=237 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#3a3a3a guibg=NONE gui=NONE ctermfg=237 ctermbg=NONE cterm=NONE

	highlight SpellBad guifg=#ff0000 guibg=NONE gui=undercurl ctermfg=196 ctermbg=NONE cterm=undercurl
	highlight SpellLocal guifg=#5f875f guibg=NONE gui=undercurl ctermfg=65 ctermbg=NONE cterm=undercurl
	highlight SpellCap guifg=#87afff guibg=NONE gui=undercurl ctermfg=111 ctermbg=NONE cterm=undercurl
	highlight SpellRare guifg=#ff8700 guibg=NONE gui=undercurl ctermfg=208 ctermbg=NONE cterm=undercurl

	highlight VisualNOS guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
	highlight Cursor guifg=#000000 guibg=#ffffff gui=NONE ctermfg=16 ctermbg=231 cterm=NONE
endif

"DARKER GRAY BACKGROUND
if g:sierra_Twilight
	"COLORS
	highlight Normal guifg=#d0d0d0 guibg=#1c1c1c gui=NONE ctermfg=252 ctermbg=234 cterm=NONE
	highlight Comment guifg=#4e4e4e guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE

	"WINDOW UI
	highlight StatusLine guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight StatusLineNC guifg=#626262 guibg=#121212 gui=NONE ctermfg=241 ctermbg=233 cterm=NONE
	highlight StatusLineTerm guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight StatusLineTermNC guifg=#626262 guibg=#121212 gui=NONE ctermfg=241 ctermbg=233 cterm=NONE

	highlight Pmenu guifg=#626262 guibg=#262626 gui=NONE ctermfg=241 ctermbg=235 cterm=NONE
	highlight PmenuSel guifg=#eeeeee guibg=#262626 gui=NONE ctermfg=255 ctermbg=235 cterm=NONE
	highlight PmenuSbar guifg=#262626 guibg=#262626 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
	highlight PmenuThumb guifg=#262626 guibg=#262626 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
	highlight TabLine guifg=#626262 guibg=#121212 gui=NONE ctermfg=241 ctermbg=233 cterm=NONE
	highlight TabLineSel guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight TabLineFill guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=233 cterm=NONE

	highlight CursorLineNR guifg=#9e9e9e guibg=#121212 gui=NONE ctermfg=247 ctermbg=233 cterm=NONE
	highlight CursorLine guifg=NONE guibg=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
	highlight CursorColumn guifg=NONE guibg=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
	highlight Folded guifg=#626262 guibg=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
	highlight VertSplit guifg=#303030 guibg=#1c1c1c gui=NONE ctermfg=236 ctermbg=234 cterm=NONE
	highlight LineNr guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight NonText guifg=#303030 guibg=NONE gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#303030 guibg=NONE gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE

	highlight SpellBad guifg=#ff0000 guibg=NONE gui=undercurl ctermfg=196 ctermbg=NONE cterm=undercurl
	highlight SpellLocal guifg=#5f875f guibg=NONE gui=undercurl ctermfg=65 ctermbg=NONE cterm=undercurl
	highlight SpellCap guifg=#87afff guibg=NONE gui=undercurl ctermfg=111 ctermbg=NONE cterm=undercurl
	highlight SpellRare guifg=#ff8700 guibg=NONE gui=undercurl ctermfg=208 ctermbg=NONE cterm=undercurl

	highlight VisualNOS guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
	highlight Cursor guifg=#000000 guibg=#ffffff gui=NONE ctermfg=16 ctermbg=231 cterm=NONE
endif

"ALMOST BLACK BACKGROUND
if g:sierra_Midnight
	"COLORS
	highlight Normal guifg=#d0d0d0 guibg=#121212 gui=NONE ctermfg=252 ctermbg=233 cterm=NONE
	highlight Comment guifg=#4e4e4e guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE

	"WINDOW UI
	highlight StatusLine guifg=#eeeeee guibg=#1c1c1c gui=none ctermfg=255 ctermbg=234 cterm=none
	highlight StatusLineNC guifg=#585858 guibg=#1c1c1c gui=none ctermfg=240 ctermbg=234 cterm=none
	highlight StatusLineTerm guifg=#eeeeee guibg=#1c1c1c gui=none ctermfg=255 ctermbg=234 cterm=none
	highlight StatusLineTermNC guifg=#585858 guibg=#1c1c1c gui=none ctermfg=240 ctermbg=234 cterm=none

	highlight Pmenu guifg=#585858 guibg=#1c1c1c gui=none ctermfg=240 ctermbg=234 cterm=none
	highlight PmenuSel guifg=#eeeeee guibg=#1c1c1c gui=none ctermfg=255 ctermbg=234 cterm=none
	highlight PmenuSbar guifg=#1c1c1c guibg=#1c1c1c gui=NONE ctermfg=234 ctermbg=234 cterm=NONE
	highlight PmenuThumb guifg=#1c1c1c guibg=#1c1c1c gui=NONE ctermfg=234 ctermbg=234 cterm=NONE
	highlight TabLine guifg=#585858 guibg=#1c1c1c gui=none ctermfg=240 ctermbg=234 cterm=none
	highlight TabLineSel guifg=#eeeeee guibg=#1c1c1c gui=none ctermfg=255 ctermbg=234 cterm=none
	highlight TabLineFill guifg=NONE guibg=#1c1c1c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE

	highlight CursorLineNR guifg=#9e9e9e guibg=#1c1c1c gui=NONE ctermfg=247 ctermbg=234 cterm=NONE
	highlight CursorLine guifg=NONE guibg=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE
	highlight CursorColumn guifg=NONE guibg=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE
	highlight Folded guifg=#585858 guibg=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
	highlight VertSplit guifg=#262626 guibg=#121212 gui=NONE ctermfg=235 ctermbg=233 cterm=NONE
	highlight LineNr guifg=#4e4e4e guibg=#1c1c1c gui=none ctermfg=239 ctermbg=234 cterm=none
	highlight NonText guifg=#262626 guibg=NONE gui=NONE ctermfg=235 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#262626 guibg=NONE gui=NONE ctermfg=235 ctermbg=NONE cterm=NONE

	highlight SpellBad guifg=#ff0000 guibg=NONE gui=undercurl ctermfg=196 ctermbg=NONE cterm=undercurl
	highlight SpellLocal guifg=#5f875f guibg=NONE gui=undercurl ctermfg=65 ctermbg=NONE cterm=undercurl
	highlight SpellCap guifg=#87afff guibg=NONE gui=undercurl ctermfg=111 ctermbg=NONE cterm=undercurl
	highlight SpellRare guifg=#ff8700 guibg=NONE gui=undercurl ctermfg=208 ctermbg=NONE cterm=undercurl

	highlight VisualNOS guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
	highlight Cursor guifg=#000000 guibg=#ffffff gui=NONE ctermfg=16 ctermbg=231 cterm=NONE
endif

"BLACK BACKGROUND
if g:sierra_Pitch
	"COLORS
	highlight Normal guifg=#d0d0d0 guibg=#080808 gui=NONE ctermfg=252 ctermbg=232 cterm=NONE
	highlight Comment guifg=#4e4e4e guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE

	"WINDOW UI
	highlight StatusLine guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight StatusLineNC guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight StatusLineTerm guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight StatusLineTermNC guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE

	highlight Pmenu guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight PmenuSel guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight PmenuSbar guifg=#121212 guibg=#121212 gui=NONE ctermfg=233 ctermbg=233 cterm=NONE
	highlight PmenuThumb guifg=#121212 guibg=#121212 gui=NONE ctermfg=233 ctermbg=233 cterm=NONE
	highlight TabLine guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight TabLineSel guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight TabLineFill guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE

	highlight CursorLineNR guifg=#9e9e9e guibg=#121212 gui=NONE ctermfg=247 ctermbg=233 cterm=NONE
	highlight CursorLine guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE
	highlight CursorColumn guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE
	highlight Folded guifg=#4e4e4e guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
	highlight VertSplit guifg=#1c1c1c guibg=#080808 gui=NONE ctermfg=234 ctermbg=232 cterm=NONE
	highlight LineNr guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight NonText guifg=#1c1c1c guibg=NONE gui=NONE ctermfg=234 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#1c1c1c guibg=NONE gui=NONE ctermfg=234 ctermbg=NONE cterm=NONE

	highlight SpellBad guifg=#ff0000 guibg=NONE gui=undercurl ctermfg=196 ctermbg=NONE cterm=undercurl
	highlight SpellLocal guifg=#5f875f guibg=NONE gui=undercurl ctermfg=65 ctermbg=NONE cterm=undercurl
	highlight SpellCap guifg=#87afff guibg=NONE gui=undercurl ctermfg=111 ctermbg=NONE cterm=undercurl
	highlight SpellRare guifg=#ff8700 guibg=NONE gui=undercurl ctermfg=208 ctermbg=NONE cterm=undercurl

	highlight VisualNOS guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
	highlight Cursor guifg=#000000 guibg=#ffffff gui=NONE ctermfg=16 ctermbg=231 cterm=NONE
endif

"REMOVE BLOCK MATCHPARENS - ADDS UNDERLINE
if g:sierra_Nevada
	"WINDOW UI
	highlight MatchParen guifg=#ffffff guibg=#000000 gui=underline ctermfg=231 ctermbg=16 cterm=underline
endif

"LICENSE:
"Copyright (c) 2020 Alessandro Yorba
"
"Permission is hereby granted, free of charge, to any person obtaining a copy
"of this software and associated documentation files (the "Software"), to deal
"in the Software without restriction, including without limitation the rights
"to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
"copies of the Software, and to permit persons to whom the Software is
"furnished to do so, subject to the following conditions:
"
"The above copyright notice and this permission notice shall be included in
"all copies or substantial portions of the Software.
"
"THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
"IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
"FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
"AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
"LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
"OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
"THE SOFTWARE.
