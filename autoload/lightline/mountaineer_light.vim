" =============================================================================
" Filename: autoload/lightline/colorscheme/mountaineer-light.vim
" Author: itchyny
" License: MIT License
" Last Change: 2013/09/07 12:21:04.
" =============================================================================
let s:base03 = [ '#050505', 233 ]
let s:base02 = [ '#f0f0f0', 236 ]
let s:base01 = [ '#f0f0f0', 239 ]
let s:base00 = [ '#666656', 242  ]
let s:base0 = [ '#808070', 244 ]
let s:base1 = [ '#f0f0f0', 246 ]
let s:base2 = [ '#a8a897', 248 ]
let s:base3 = [ '#ebc7bc', 253 ]
let s:yellow = [ '#d3d3d3', 215 ]
let s:orange = [ '#d3d3d3', 222 ]
let s:red = [ '#d3d3d3', 167 ]
let s:magenta = [ '#d3d3d3', 217 ]
let s:blue = [ '#d3d3d3', 103 ]
let s:cyan = [ '#d3d3d3', 110 ]
let s:green = [ '#d3d3d3', 107 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base03, s:blue ], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:base03, s:green ], [ s:base2, s:base01 ] ]
let s:p.inactive.right = [ [ s:base03, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base00, s:base02 ] ]
let s:p.insert.left = [ [ s:base03, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base03, s:red ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base03, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base0, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base00, s:base02 ] ]
let s:p.tabline.left = copy(s:p.normal.middle)
let s:p.tabline.tabsel = [ [ s:base3, s:base00 ] ]
let s:p.tabline.middle = copy(s:p.normal.middle)
let s:p.tabline.right = [ [ s:base03, s:green ] ]
let s:p.normal.error = [ [ s:red, s:base02 ] ]
let s:p.normal.warning = [ [ s:yellow, s:base01 ] ]

let g:lightline#colorscheme#mountaineer_light#palette = lightline#colorscheme#flatten(s:p)
