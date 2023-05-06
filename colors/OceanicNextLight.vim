" ===============================================================
" OceanicNextLight
" Author: Mike Hartington
" ===============================================================

" {{{ Setup
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
  let g:colors_name="OceanicNextLight"

" Colors {{{
  let s:base00 = ['#f5f7fa', '253']
  let s:base01 = ['#d4d8dc', '252']
  let s:base02 = ['#b4babf', '251']
  let s:base03 = ['#a7adba', '145']
  let s:base04 = ['#65737e', '243']
  let s:base05 = ['#4f5b66', '240']
  let s:base06 = ['#343d46', '237']
  let s:base07 = ['#1b2b34', '235']
  let s:red    = ['#d0545b', '124']
  let s:orange = ['#db804d', '131']
  let s:yellow = ['#dcb057', '137']
  let s:green  = ['#87af82', '101']
  let s:cyan   = ['#569e9d',  '72']
  let s:blue   = ['#5a87b4',  '60']
  let s:purple = ['#ad82ad',  '96']
  let s:brown  = ['#966a5b', '101']
  let s:white  = ['#ffffff',  '15']
  let s:none   = ['NONE',    'NONE']
" }}}

call oceanic_next#highlight(
  \ s:base00,
  \ s:base01,
  \ s:base02,
  \ s:base03,
  \ s:base04,
  \ s:base05,
  \ s:base06,
  \ s:base07,
  \ s:red,
  \ s:orange,
  \ s:yellow,
  \ s:green,
  \ s:cyan,
  \ s:blue,
  \ s:purple,
  \ s:brown,
  \ s:white,
  \ s:none
  \)
  set background=light
