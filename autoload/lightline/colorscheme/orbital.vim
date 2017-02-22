let s:p = {'normal': {}, 'inactive': {}, 'insert': {},
        \ 'replace': {}, 'visual': {}, 'tabline': {}}

let s:has_stl = 0
if exists('&fcs') && &fcs != ""
    let s:fcs_a = split(&fcs, ',')
    for s:opt in s:fcs_a
        let s:item = split(s:opt, ':')
        if s:item[0] == 'stl' && s:item[1] != ""
            let s:has_stl = 1
            break
        endif
    endfor
endif
unlet! s:fcs_a s:opt s:item

let s:p.inactive.left     = [[ '#949494', '#262626', 246, 235 ],
                          \  [ '#262626', '#000000', 235,   0 ]]
if s:has_stl
  let s:p.inactive.middle = [[ '#262626', '#000000', 235,   0 ]]
else
  let s:p.inactive.middle = [[ '#000000', '#262626',   0, 235 ]]
endif
let s:p.inactive.right    = [[ '#262626', '#000000', 235,   0 ]]

let s:p.insert.left       = [[ '#262626', '#bcbcbc', 235, 250 ],
                          \  [ '#ffd7af', '#262626', 223, 235 ],
                          \  [ '#5f5f5f', '#262626',  59, 235 ],
                          \  [ '#5f87af', '#262626',  67, 235 ]]

let s:p.normal.error      = [[ '#ffd7af', '#0000d7', 223,  20 ]]
let s:p.normal.left       = [[ '#87afd7', '#262626', 110, 235 ],
                          \  [ '#ffd7af', '#262626', 223, 235 ],
                          \  [ '#5f5f5f', '#262626',  59, 235 ],
                          \  [ '#5f87af', '#262626',  67, 235 ]]
if s:has_stl
  let s:p.normal.middle   = [[ '#0087d7', '#000000',  32,   0 ]]
else
  let s:p.normal.middle   = [[ '#000000', '#262626',   0, 235 ]]
endif
let s:p.normal.right      = [[ '#5f5f5f', '#000000',  59,   0 ],
                          \  [ '#5f87d7', '#000000',  68,   0 ],
                          \  [ '#af875f', '#000000', 137,   0 ]]
let s:p.normal.warning    = [[ '#af875f', '#0000d7', 137,  20 ]]

let s:p.replace.left      = [[ '#e4e4e4', '#005faf', 254,  25 ],
                          \  [ '#ffd7af', '#262626', 223, 235 ],
                          \  [ '#5f5f5f', '#262626',  59, 235 ],
                          \  [ '#5f87af', '#262626',  67, 235 ]]

let s:p.tabline.left      = [[ '#949494', '#262626', 246, 235 ]]
let s:p.tabline.middle    = [[ '#262626', '#262626', 235, 235 ]]
let s:p.tabline.right     = [[ '#a8a8a8', '#262626', 248, 235 ]]
let s:p.tabline.tabsel    = [[ '#d7af87', '#262626', 180, 235 ]]

let s:p.visual.left       = [[ '#000000', '#87afd7',   0, 110 ],
                          \  [ '#ffd7af', '#262626', 223, 235 ],
                          \  [ '#5f5f5f', '#262626',  59, 235 ],
                          \  [ '#5f87af', '#262626',  67, 235 ]]

unlet! s:has_stl

let g:lightline#colorscheme#orbital#palette = s:p
