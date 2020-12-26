" dogrun vim-clap theme
"
" Author: wadackel
" License: MIT
"   Copyright (c) 2020 wadackel

let s:save_cpo = &cpoptions
set cpoptions&vim

let s:palette = {}
let s:palette.input = { 'ctermfg': '104', 'guifg': '#929be5', 'ctermbg': '236', 'guibg': '#292c3f', 'gui': 'bold', 'cterm': 'bold' }
let s:palette.display = { 'ctermfg': '146', 'guifg': '#9ea3c0', 'ctermbg': '237', 'guibg': '#32364c', 'gui': 'NONE', 'cterm': 'NONE' }
let s:palette.spinner = { 'ctermfg': '104', 'guifg': '#929be5', 'ctermbg': '236', 'guibg': '#292c3f', 'gui': 'bold', 'cterm': 'bold' }
let s:palette.search_text = { 'ctermfg': '146', 'guifg': '#9ea3c0', 'ctermbg': '236', 'guibg': '#292c3f', 'gui': 'NONE', 'cterm': 'NONE' }
let s:palette.preview = { 'ctermfg': '146', 'guifg': '#9ea3c0', 'ctermbg': '60', 'guibg': '#424865', 'gui': 'NONE', 'cterm': 'NONE' }
let s:palette.selected = { 'ctermfg': '73', 'guifg': '#59b6b6', 'gui': 'bold', 'cterm': 'bold' }
let s:palette.current_selection = { 'ctermfg': '146', 'guifg': '#bdc3e6', 'gui': 'bold', 'cterm': 'bold' }
hi ClapMatches guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapMatches1 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapMatches2 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapMatches3 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapMatches4 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapMatches5 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapMatches6 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapMatches7 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapMatches8 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches1 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches2 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches3 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches4 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches5 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches6 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches7 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches8 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches9 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches10 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches11 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapFuzzyMatches12 guifg=#73c1a9 ctermfg=79 guibg=NONE cterm=NONE gui=bold cterm=bold
hi ClapNoMatchesFound guifg=#ac8b83 ctermfg=138 guibg=NONE cterm=NONE gui=bold cterm=bold
let g:clap#themes#dogrun#palette = s:palette

let &cpoptions = s:save_cpo
unlet s:save_cpo

