" =============================================================================
" Filename: autoload/lightline/colorscheme/carbonized_light.vim
" Author: parmort
" License: MIT License
" Last Change: 2018/05/07 05:23 PM (EST).
" =============================================================================
let s:base03 = [ '#2b2b2b', 233 ]
let s:base02 = [ '#3b3b37', 236 ]
let s:base01 = [ '#75756e', 239 ]
let s:base00 = [ '#8a8a81', 242  ]
let s:base0 = [ '#9e9e95', 244 ]
let s:base1 = [ '#b5b5aa', 246 ]
let s:base2 = [ '#efefe0', 248 ]
let s:base3 = [ '#fffff0', 253 ]
let s:yellow = [ '#d4ac35', 215 ]
let s:orange = [ '#e06a26', 222 ]
let s:red = [ '#f55050', 167 ]
let s:magenta = [ '#a26fbf', 217 ]
let s:blue = [ '#468dd4', 103 ]
let s:cyan = [ '#1b9e9e', 110 ]
let s:green = [ '#219e21', 107 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base2, s:blue ], [ s:base01, s:base2 ] ]
let s:p.normal.middle = [ [ s:base01, s:base2 ] ]
let s:p.normal.right = [ [ s:base2, s:blue ], [ s:base01, s:base2 ] ]
let s:p.normal.error = [ [ s:red, s:base02 ] ]
let s:p.normal.warning = [ [ s:yellow, s:base01 ] ]

let s:p.insert.left = [ [ s:base2, s:green ], [ s:base01, s:base2 ] ]
let s:p.insert.right = [ [ s:base2, s:green ], [ s:base01, s:base2 ] ]

let s:p.replace.left = [ [ s:base2, s:red ], [ s:base01, s:base2 ] ]
let s:p.replace.right = [ [ s:base2, s:red ], [ s:base01, s:base2 ] ]

let s:p.visual.left = [ [ s:base2, s:magenta ], [ s:base01, s:base2 ] ]
let s:p.visual.right = [ [ s:base2, s:magenta ], [ s:base01, s:base2 ] ]

let s:p.inactive.left =  [ [ s:base2, s:base0 ], [ s:base0, s:base2 ] ]
let s:p.inactive.middle = [ [ s:base0, s:base2 ] ]
let s:p.inactive.right = [ [ s:base2, s:base0 ], [ s:base0, s:base2 ] ]

let s:p.tabline.left = [ [ s:base3, s:base02 ] ]
let s:p.tabline.middle = [ [ s:base01, s:base1 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.tabline.tabsel = [ [ s:base3, s:base02 ] ]

let g:lightline#colorscheme#carbonized_light#palette = lightline#colorscheme#flatten(s:p)
