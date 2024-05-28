" Vim color file
" Author: Flo Greistorfer
" Colorscheme Name: monokai_vibrant
" Inspired by https://github.com/dylantmarsh/monokai-vibrant

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "monokai_vibrant"

" Default group
hi Cursor ctermfg=236 ctermbg=231 cterm=NONE guifg=#16171d guibg=#f6f6f6 gui=NONE
hi SignColumn ctermfg=NONE ctermbg=237 cterm=NONE guibg=#3a3a3a guifg=NONE guisp=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3E4451 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#191b20 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#191b20 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#191b20 gui=NONE
hi LineNr ctermfg=246 ctermbg=59 cterm=NONE guifg=#959394 guibg=#191b20 gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#696769 guibg=#696769 gui=NONE
hi MatchParen ctermfg=204 ctermbg=NONE cterm=underline guifg=#ff3f4f guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#f6f6f6 guibg=#696769 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#f6f6f6 guibg=#696769 gui=NONE
hi Pmenu ctermfg=150 ctermbg=NONE cterm=NONE guifg=#81f900 guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#16171d gui=NONE
hi IncSearch ctermfg=236 ctermbg=221 cterm=NONE guifg=#16171d guibg=#ffd945 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=209 ctermbg=NONE cterm=NONE guifg=#86b6c2 guibg=NONE gui=NONE
hi Folded ctermfg=189 ctermbg=60 cterm=NONE guifg=#d7d7ff guibg=#5f5f87 gui=NONE
hi Normal ctermfg=231 ctermbg=236 cterm=NONE guifg=#f6f6f6 guibg=#16171d gui=NONE
hi Boolean ctermfg=147 ctermbg=NONE cterm=NONE guifg=#e373ce guibg=NONE gui=NONE
hi Character ctermfg=147 ctermbg=NONE cterm=NONE guifg=#e373ce guibg=NONE gui=NONE
hi Comment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5c6370 guibg=NONE gui=italic
hi Conditional ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff3f4f guibg=NONE gui=italic
hi Constant ctermfg=147 ctermbg=NONE cterm=NONE guifg=#e373ce guibg=NONE gui=NONE
hi Define ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff3f4f guibg=NONE gui=italic
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f6f6f6 guibg=#47840e gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8c0809 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f6f6f6 guibg=#273a5b gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f6f6f6 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=147 ctermbg=NONE cterm=NONE guifg=#e373ce guibg=NONE gui=NONE
hi Function ctermfg=150 ctermbg=NONE cterm=NONE guifg=#81f900 guibg=NONE gui=NONE
hi Identifier ctermfg=116 ctermbg=NONE cterm=NONE guifg=#19d1e5 guibg=NONE gui=italic
hi Keyword ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff3f4f guibg=NONE gui=italic
hi Label ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff3f4f guibg=NONE gui=italic
hi NonText ctermfg=240 ctermbg=236 cterm=NONE guifg=#5b595c guibg=#16171d gui=NONE
hi Number ctermfg=147 ctermbg=NONE cterm=NONE guifg=#e373ce guibg=NONE gui=NONE
hi Special ctermfg=147 ctermbg=NONE cterm=NONE guifg=#e373ce guibg=NONE gui=NONE
hi Operator ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff3f4f guibg=NONE gui=italic
hi PreProc ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff3f4f guibg=NONE gui=italic
hi SpecialKey ctermfg=240 ctermbg=59 cterm=NONE guifg=#5b595c guibg=#191b20 gui=NONE
hi Statement ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff3f4f guibg=NONE gui=italic
hi StorageClass ctermfg=116 ctermbg=NONE cterm=NONE guifg=#19d1e5 guibg=NONE gui=italic
hi String ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffd945 guibg=NONE gui=NONE
hi Tag ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff3f4f guibg=NONE gui=italic
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f6f6f6 guibg=NONE gui=bold
hi Todo ctermfg=231 ctermbg=NONE cterm=inverse,bold guifg=#f6f6f6 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=116 ctermbg=NONE cterm=NONE guifg=#19d1e5 guibg=NONE gui=italic
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline

" Color for custom group
" hi EndColons ctermfg=246 ctermbg=NONE cterm=NONE guifg=#939293 guibg=NONE gui=NONE
" hi link Braces EndColons
" hi link Parens EndColons
" hi link Brackets EndColons
" hi link Arrow EndColons

" Custom group
" syn match EndColons /[;,]/
" syn match Braces /[\[\]]/
" syn match Parens /[()]/
" syn match Brackets /[{}]/
" syn match Arrow /->/
