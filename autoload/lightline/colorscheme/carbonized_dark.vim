" =============================================================================
" Filename: autoload/lightline/colorscheme/carbonized_dark.vim
" Author: parmort
" License: MIT License
" Last Change: 2018/05/07 05:28 PM (EST).
" =============================================================================
let s:base03 = [ '#2b2b2b', 233 ]
let s:base02 = [ '#3b3b37', 236 ]
let s:base01 = [ '#75756e', 239 ]
let s:base00 = [ '#8a8a81', 242  ]
let s:base0 = [ '#9e9e95', 244 ]
let s:base1 = [ '#b5b5aa', 246 ]
let s:base2 = [ '#f0f0e1', 248 ]
let s:base3 = [ '#fffff0', 253 ]
let s:yellow = [ '#ab8e38', 215 ]
let s:orange = [ '#b56f45', 222 ]
let s:red = [ '#bf5858', 167 ]
let s:magenta = [ '#8b6a9e', 217 ]
let s:blue = [ '#557b9e', 103 ]
let s:cyan = [ '#458a8a', 110 ]
let s:green = [ '#508a50', 107 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base02, s:blue ], [ s:base1, s:base02 ] ]
let s:p.normal.middle = [ [ s:base0, s:base02 ] ]
let s:p.normal.right = [ [ s:base02, s:blue ], [ s:base1, s:base02 ] ]
let s:p.normal.error = [ [ s:red, s:base02 ] ]
let s:p.normal.warning = [ [ s:yellow, s:base01 ] ]

let s:p.insert.left = [ [ s:base02, s:green ], [ s:base1, s:base02 ] ]
let s:p.insert.right = [ [ s:base02, s:green ], [ s:base1, s:base02 ] ]

let s:p.replace.left = [ [ s:base02, s:red ], [ s:base1, s:base02 ] ]
let s:p.replace.right = [ [ s:base02, s:red ], [ s:base1, s:base02 ] ]

let s:p.visual.left = [ [ s:base02, s:magenta ], [ s:base2, s:base02 ] ]
let s:p.visual.right = [ [ s:base02, s:magenta ], [ s:base2, s:base02 ] ]

let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base00, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base00, s:base02 ] ]
let s:p.inactive.right = [ [ s:base02, s:base00 ], [ s:base0, s:base02 ] ]

let s:p.tabline.left = [ [ s:base3, s:base02 ] ]
let s:p.tabline.middle = [ [ s:base01, s:base1 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.tabline.tabsel = [ [ s:base3, s:base02 ] ]

let g:lightline#colorscheme#carbonized_dark#palette = lightline#colorscheme#flatten(s:p)
