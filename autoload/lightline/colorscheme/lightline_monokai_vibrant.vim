"{{{Palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:dark      = [ '#181A1F', 235 ]
let s:darker    = [ '#191B20', 236 ]
let s:darkgrey  = [ '#383E4A', 240 ]
let s:red       = [ '#FF3F4F', 167 ]
let s:green     = [ '#81F900', 142 ]
let s:orange    = [ '#FF9700', 208 ]
let s:white     = [ '#F6F6F6', 223 ]
let s:golden    = [ '#528bff', 223 ]
"}}}

"{{{Definition
let s:tab_l_fg = s:white
let s:tab_l_bg = s:darkgrey
let s:tab_r_fg = s:dark
let s:tab_r_bg = s:green
let s:tab_sel_fg = s:dark
let s:tab_sel_bg = s:green
let s:tab_middle_fg = s:white
let s:tab_middle_bg = s:darker

let s:warningfg = s:dark
let s:warningbg = s:orange
let s:errorfg = s:dark
let s:errorbg = s:red

let s:normal_l1_fg = s:dark
let s:normal_l1_bg = s:green
let s:normal_l2_fg = s:white
let s:normal_l2_bg = s:darkgrey
let s:normal_r1_fg = s:dark
let s:normal_r1_bg = s:green
let s:normal_r2_fg = s:white
let s:normal_r2_bg = s:darkgrey
let s:normal_middle_fg = s:white
let s:normal_middle_bg = s:darker

let s:insert_l1_fg = s:dark
let s:insert_l1_bg = s:golden
let s:insert_l2_fg = s:white
let s:insert_l2_bg = s:darkgrey
let s:insert_r1_fg = s:dark
let s:insert_r1_bg = s:golden
let s:insert_r2_fg = s:white
let s:insert_r2_bg = s:darkgrey
let s:insert_middle_fg = s:white
let s:insert_middle_bg = s:darker

let s:visual_l1_fg = s:dark
let s:visual_l1_bg = s:red
let s:visual_l2_fg = s:white
let s:visual_l2_bg = s:darkgrey
let s:visual_r1_fg = s:dark
let s:visual_r1_bg = s:red
let s:visual_r2_fg = s:white
let s:visual_r2_bg = s:darkgrey
let s:visual_middle_fg = s:white
let s:visual_middle_bg = s:darker

let s:replace_l1_fg = s:dark
let s:replace_l1_bg = s:orange
let s:replace_l2_fg = s:white
let s:replace_l2_bg = s:darkgrey
let s:replace_r1_fg = s:dark
let s:replace_r1_bg = s:orange
let s:replace_r2_fg = s:white
let s:replace_r2_bg = s:darkgrey
let s:replace_middle_fg = s:white
let s:replace_middle_bg = s:darker

let s:inactive_l1_fg = s:white
let s:inactive_l1_bg = s:darkgrey
let s:inactive_l2_fg = s:white
let s:inactive_l2_bg = s:darkgrey
let s:inactive_r1_fg = s:white
let s:inactive_r1_bg = s:darkgrey
let s:inactive_r2_fg = s:white
let s:inactive_r2_bg = s:darkgrey
let s:inactive_middle_fg = s:white
let s:inactive_middle_bg = s:darker
"}}}

"{{{Implementation
let s:p.normal.middle = [ [ s:normal_middle_fg, s:normal_middle_bg ] ]
let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg, 'bold' ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg, 'bold' ], [ s:normal_r2_fg, s:normal_r2_bg ] ]

let s:p.insert.middle = [ [ s:insert_middle_fg, s:insert_middle_bg ] ]
let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg, 'bold' ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg, 'bold' ], [ s:insert_r2_fg, s:insert_r2_bg ] ]

let s:p.visual.middle = [ [ s:visual_middle_fg, s:visual_middle_bg ] ]
let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg, 'bold' ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg, 'bold' ], [ s:visual_r2_fg, s:visual_r2_bg ] ]

let s:p.replace.middle = [ [ s:replace_middle_fg, s:replace_middle_bg ] ]
let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg, 'bold' ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg, 'bold' ], [ s:replace_r2_fg, s:replace_r2_bg ] ]

let s:p.inactive.left = [ [ s:inactive_l1_fg, s:inactive_l1_bg ], [ s:inactive_l2_fg, s:inactive_l2_bg ] ]
let s:p.inactive.middle = [ [ s:inactive_middle_fg, s:inactive_middle_bg ] ]
let s:p.inactive.right = [ [ s:inactive_r1_fg, s:inactive_r1_bg ], [ s:inactive_r2_fg, s:inactive_r2_bg ] ]

let s:p.tabline.left = [ [ s:tab_l_fg, s:tab_l_bg] ]
let s:p.tabline.right = [ [ s:tab_r_fg, s:tab_r_bg] ]
let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg, 'bold' ] ]
let s:p.tabline.middle = [ [ s:tab_middle_fg, s:tab_middle_bg] ]

let s:p.normal.error = [ [ s:errorfg, s:errorbg ] ]
let s:p.normal.warning = [ [ s:warningfg, s:warningbg ] ]


if get(g:, 'monokai_vibrant_lightline_disable_bold', 0)
    let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
    let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg ], [ s:normal_r2_fg, s:normal_r2_bg ] ]
    let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
    let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg ], [ s:insert_r2_fg, s:insert_r2_bg ] ]
    let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
    let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg ], [ s:visual_r2_fg, s:visual_r2_bg ] ]
    let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
    let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg ], [ s:replace_r2_fg, s:replace_r2_bg ] ]
    let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg ] ]
endif
"}}}

let g:lightline#colorscheme#lightline_monokai_vibrant#palette = lightline#colorscheme#flatten(s:p)
