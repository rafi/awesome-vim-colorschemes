" dogrun lightline theme
"
" Author: wadackel
" License: MIT
"   Copyright (c) 2020 wadackel

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [[['#222433', 235], ['#929be5', 104]], [['#929be5', 104], ['#282a3a', 235]]]
let s:p.normal.middle = [[['#4b4e6d', 60], ['#282a3a', 235]]]
let s:p.normal.right = [[['#222433', 235], ['#929be5', 104]], [['#929be5', 104], ['#282a3a', 235]]]
let s:p.normal.error = [[['#dc6f79', 167], ['#282a3a', 235]]]
let s:p.normal.warning = [[['#ac8b83', 138], ['#282a3a', 235]]]
let s:p.inactive.left = [[['#4b4e6d', 60], ['#282a3a', 235]], [['#4b4e6d', 60], ['#282a3a', 235]]]
let s:p.inactive.middle = [[['#4b4e6d', 60], ['#282a3a', 235]]]
let s:p.inactive.right = [[['#4b4e6d', 60], ['#282a3a', 235]], [['#4b4e6d', 60], ['#282a3a', 235]]]
let s:p.insert.left = [[['#222433', 235], ['#73c1a9', 79]], [['#73c1a9', 79], ['#282a3a', 235]]]
let s:p.insert.right = [[['#222433', 235], ['#73c1a9', 79]], [['#73c1a9', 79], ['#282a3a', 235]]]
let s:p.visual.left = [[['#222433', 235], ['#b871b8', 133]], [['#b871b8', 133], ['#282a3a', 235]]]
let s:p.visual.right = [[['#222433', 235], ['#b871b8', 133]], [['#b871b8', 133], ['#282a3a', 235]]]
let s:p.replace.left = [[['#222433', 235], ['#dc6f7a', 167]], [['#dc6f7a', 167], ['#282a3a', 235]]]
let s:p.replace.right = [[['#222433', 235], ['#dc6f7a', 167]], [['#dc6f7a', 167], ['#282a3a', 235]]]
let s:p.tabline.left = [[['#4b4e6d', 60], ['#282a3a', 235]]]
let s:p.tabline.tabsel = [[['#222433', 235], ['#929be5', 104]]]
let s:p.tabline.middle = [[['#4b4e6d', 60], ['#282a3a', 235]]]
let s:p.tabline.right = [[['#4b4e6d', 60], ['#282a3a', 235]]]

let g:lightline#colorscheme#dogrun#palette = lightline#colorscheme#flatten(s:p)
