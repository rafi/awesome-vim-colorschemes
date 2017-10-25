" >>>--------------------------------------------------------------->
"       >>
"      >>->                      >->
"     >> >->     >> >-->    >--> >->        >-->    >> >--> >->   >->
"    >->  >->     >->     >->    >->>->   >>   >->   >->     >-> >->
"   >----->>->    >->    >->     >->  >-> >>--->>->  >->       >-->
"  >->      >->   >->     >->    >>   >-> >>         >->        >->
" >->        >-> >-->       >--> >->  >->  >---->   >-->       >->
"                                                            >->
" >>>--------------------------------------------------------------->
"
" URL: https://github.com/Badacadabra/vim-archery
" Author: Baptiste Vannesson <contact@badacadabra.net>
" License: MIT
" Description: Lightline colorscheme inspired by Arch Linux colors
"
" >>>--------------------------------------------------------------->

" ============================
" COLOR PALETTE {{{1
" ============================

let s:blue      = '#0088CC'
let s:lightblue = '#81A3CF'
let s:black     = '#222222'
let s:gray      = '#333333'
let s:lightgray = '#53586F'
let s:white     = '#F6F9FC'
let s:yellow    = '#EAC06E'
let s:red       = '#C95F5F'

" ============================
" THEMING {{{1
" ============================

" ----------------------------
" Modes {{{2
" ----------------------------

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" ----------------------------
" Normal {{{2
" ----------------------------

let s:p.normal.left     = [[s:white, s:blue], [s:black, s:white]]
let s:p.normal.middle   = [[s:black, s:lightblue]]
let s:p.normal.right    = [[s:white, s:blue], [s:black, s:white]]
let s:p.normal.error    = [[s:red, s:gray]]
let s:p.normal.warning  = [[s:yellow, s:gray]]

"" ----------------------------
"" Inactive {{{2
"" ----------------------------

let s:p.inactive.left   = [[s:lightgray, s:gray], [s:gray, s:lightgray]]
let s:p.inactive.middle = [[s:gray, s:black]]
let s:p.inactive.right  = [[s:gray, s:lightgray], [s:lightgray, s:gray]]

"" ----------------------------
"" Insert/Replace/Visual {{{2
"" ----------------------------

let s:p.insert.left     = [[s:black, s:white], [s:white, s:blue]]
let s:p.replace.left    = [[s:black, s:white], [s:white, s:blue]]
let s:p.visual.left     = [[s:black, s:white], [s:white, s:blue]]

"" ----------------------------
"" Tab line {{{2
"" ----------------------------

let s:p.tabline.left    = [[s:white, s:blue]]
let s:p.tabline.tabsel  = [[s:black, s:lightblue]]
let s:p.tabline.middle  = [[s:blue, s:gray]]
let s:p.tabline.right   = copy(s:p.normal.right)

" ----------------------------
" Autoload {{{2
" ----------------------------

let g:lightline#colorscheme#archery#palette = lightline#colorscheme#fill(s:p)
