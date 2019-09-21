" ==============================================================================
" Name:       purify
" Author:     Kyoz
" Repository: https://github.com/kyoz/purify/
" License:    The MIT License (MIT)
" Copyright:  Kyoz (banminkyoz@gmail.com)
" 
" Clean and beautiful colorscheme for vim (neovim)
" ==============================================================================

" Define colors
let s:colors = purify#get_colors()

let s:black  = [ s:colors.black.gui, s:colors.black.cterm ]
let s:white  = [ s:colors.white.gui, s:colors.white.cterm ]
let s:pink   = [ s:colors.pink.gui, s:colors.pink.cterm ]
let s:salmon = [ s:colors.salmon.gui, s:colors.salmon.cterm ]
let s:green  = [ s:colors.green.gui, s:colors.green.cterm ]
let s:blue   = [ s:colors.blue.gui, s:colors.blue.cterm ]
let s:pink   = [ s:colors.pink.gui, s:colors.pink.cterm ]
let s:yellow = [ s:colors.pink.gui, s:colors.yellow.cterm ]
let s:grey   = [ s:colors.visual_grey.gui, s:colors.visual_grey.cterm ]

" Define lightline colors
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" Normal
let s:p.normal.left    = [ [ s:black, s:blue ], [ s:white, s:grey ] ]
let s:p.normal.middle  = [ [ s:white, s:black ] ]
let s:p.normal.right   = [ [ s:black, s:blue ], [ s:white, s:grey ] ]
let s:p.normal.error   = [ [ s:black, s:salmon] ]
let s:p.normal.warning = [ [ s:black, s:yellow ] ]

" Insert
let s:p.insert.left  = [ [ s:black, s:green ], [ s:white, s:grey ] ]
let s:p.insert.right = [ [ s:black, s:green ], [ s:white, s:grey ] ]

" Replace
let s:p.replace.left  = [ [ s:black, s:salmon ], [ s:white, s:grey ] ]
let s:p.replace.right = [ [ s:black, s:salmon ], [ s:white, s:grey ] ]

" Visual
let s:p.visual.left  = [ [ s:black, s:pink ], [ s:white, s:grey ] ]
let s:p.visual.right = [ [ s:black, s:pink ], [ s:white, s:grey ] ]

" Inactive
let s:p.inactive.left   =  [ [ s:white, s:grey ], [ s:white, s:grey ] ]
let s:p.inactive.right  = [ [ s:black, s:white ], [ s:black, s:white ] ]
let s:p.inactive.middle = [ [ s:white, s:grey ] ]

" Tabs
let s:p.tabline.left   = [ [ s:white, s:grey ] ]
let s:p.tabline.tabsel = [ [ s:black, s:white ] ]
let s:p.tabline.middle = [ [ s:white, s:black ] ]
let s:p.tabline.right  = [ [ s:white, s:grey ] ]

let g:lightline#colorscheme#purify#palette = lightline#colorscheme#flatten(s:p)

