" Colors
let s:black           = { "gui": "#212121", "cterm": "0", "cterm16" : "0" }
let s:medium_gray     = { "gui": "#767676", "cterm": "243", "cterm16" : "243" }
let s:white           = { "gui": "#F3F3F3", "cterm": "15", "cterm16" : "15" }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231", "cterm16" : "231" }
let s:light_black     = { "gui": "#424242", "cterm": "8", "cterm16" : "8" }
let s:lighter_black   = { "gui": "#545454", "cterm": "240", "cterm16" : "240" }

" lighter shadows and darker grays
let s:subtle_black  = { "gui": "#303030", "cterm": "236", "cterm16" : "236" }
let s:light_gray    = { "gui": "#B2B2B2", "cterm": "249", "cterm16" : "249" }
let s:lighter_gray  = { "gui": "#C6C6C6", "cterm": "251", "cterm16" : "251" }

" challenger deep colors:
let s:asphalt = { "gui": "#1e1c31", "cterm": "233", "cterm16": "NONE"}
let s:asphalt_subtle= { "gui": "#100E23", "cterm": "232", "cterm16": "8"}
let s:dark_asphalt = { "gui": "#565575", "cterm": "236", "cterm16": "0"}

let s:red = { "gui": "#ff8080", "cterm": "204", "cterm16": "1"}
let s:dark_red = { "gui": "#ff5458", "cterm": "203", "cterm16": "9"}

let s:green = { "gui": "#95ffa4", "cterm": "120", "cterm16": "2"}
let s:dark_green = { "gui": "#62d196", "cterm": "119", "cterm16": "10"}

let s:yellow = { "gui": "#ffe9aa", "cterm": "228", "cterm16": "3"}
let s:dark_yellow = { "gui": "#ffb378", "cterm": "215", "cterm16": "11"}

let s:blue = { "gui": "#91ddff", "cterm": "159", "cterm16": "4"}
let s:dark_blue = { "gui": "#65b2ff", "cterm": "75", "cterm16": "12"}

let s:purple = { "gui": "#c991e1", "cterm": "141", "cterm16": "5"}
let s:dark_purple = { "gui": "#906cff", "cterm": "135", "cterm16": "13"}

let s:cyan = { "gui": "#aaffe4", "cterm": "122", "cterm16": "6"}
let s:dark_cyan = { "gui": "#63f2f1", "cterm": "121", "cterm16": "14"}

let s:clouds = { "gui": "#cbe3e7", "cterm": "253", "cterm16": "7"}
let s:dark_clouds = { "gui": "#a6b3cc", "cterm": "252", "cterm16": "15"}

let s:bg              = s:asphalt
let s:bg_subtle       = s:asphalt_subtle
let s:bg_dark         = s:dark_asphalt
let s:norm            = s:clouds
let s:norm_subtle     = s:dark_clouds
let s:visual          = s:bg_dark

" lightline challenger deep colors:
let s:lfc = {
      \'black': [ s:black.gui, s:black.cterm16],
      \'medium_gray': [ s:medium_gray.gui, s:medium_gray.cterm16],
      \'white': [ s:white.gui, s:white.cterm16],
      \'actual_white': [ s:actual_white.gui, s:actual_white.cterm16 ],
      \'light_black': [s:light_black.gui, s:light_black.cterm16],
      \'lighter_black': [ s:lighter_black.gui, s:lighter_black.cterm16],
      \'subtle_black': [ s:subtle_black.gui, s:subtle_black.cterm16],
      \'light_gray': [ s:light_gray.gui, s:light_gray.cterm16],
      \'lighter_gray': [ s:lighter_gray.gui, s:lighter_gray.cterm16],
      \'asphalt': [s:asphalt.gui, s:asphalt.cterm16],
      \'asphalt_subtle': [s:asphalt_subtle.gui, s:asphalt_subtle.cterm16],
      \'dark_asphalt' : [s:dark_asphalt.gui, s:dark_asphalt.cterm16],
      \'red' : [s:red.gui, s:red.cterm16],
      \'dark_red' : [s:dark_red.gui, s:dark_red.cterm16],
      \'green' : [s:green.gui, s:green.cterm16],
      \'dark_green' : [s:dark_green.gui, s:dark_green.cterm16],
      \'yellow' : [s:yellow.gui, s:yellow.cterm16],
      \'dark_yellow' : [s:dark_yellow.gui, s:dark_yellow.cterm16],
      \'blue' : [s:blue.gui, s:blue.cterm16],
      \'dark_blue' : [s:dark_blue.gui, s:dark_blue.cterm16],
      \'purple' : [s:purple.gui, s:purple.cterm16],
      \'dark_purple' : [s:dark_purple.gui, s:dark_purple.cterm16],
      \'cyan' : [s:cyan.gui, s:cyan.cterm16],
      \'dark_cyan' : [s:dark_cyan.gui, s:dark_cyan.cterm16],
      \'clouds' : [s:clouds.gui, s:clouds.cterm16],
      \'dark_clouds' : [s:dark_clouds.gui, s:dark_clouds.cterm16],
      \'bg': [s:bg.gui, s:bg.cterm16],
      \'bg_subtle': [s:bg_subtle.gui, s:bg_subtle.cterm16],
      \'bg_dark': [s:bg_dark.gui, s:bg_dark.cterm16],
      \'norm': [s:norm.gui, s:norm.cterm16],
      \'norm_subtle': [s:norm_subtle.gui, s:norm_subtle.cterm16],
      \}

let s:p = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

" Tabline
let s:p.tabline.left    = [ [ s:lfc.white, s:lfc.bg_subtle ] ]
let s:p.tabline.tabsel  = [ [ s:lfc.bg_subtle, s:lfc.blue ] ]
let s:p.tabline.middle  = [ [ s:lfc.white, s:lfc.bg_subtle ] ]
let s:p.tabline.right   = [ [ s:lfc.bg_subtle, s:lfc.red ] ]

" Normal mode
let s:p.normal.left     = [ [ s:lfc.bg_subtle, s:lfc.cyan ],  [ s:lfc.bg_subtle, s:lfc.dark_cyan ] ]
let s:p.normal.middle   = [ [ s:lfc.white, s:lfc.bg_subtle ] ]
let s:p.normal.right    = [ [ s:lfc.bg_subtle, s:lfc.cyan ],  [ s:lfc.bg_subtle, s:lfc.dark_cyan ] ]
let s:p.normal.error    = [ [ s:lfc.red, s:lfc.bg_subtle ] ]
let s:p.normal.warning  = [ [ s:lfc.yellow, s:lfc.bg_subtle ] ]

" Visual mode
let s:p.visual.left     = [ [ s:lfc.bg_subtle, s:lfc.yellow ],  [ s:lfc.bg_subtle, s:lfc.dark_yellow ] ]
let s:p.visual.right    = [ [ s:lfc.bg_subtle, s:lfc.yellow ],  [ s:lfc.bg_subtle, s:lfc.dark_yellow ] ]

" Replace mode
let s:p.replace.left    = [ [ s:lfc.bg_subtle, s:lfc.green ],  [ s:lfc.bg_subtle, s:lfc.dark_green ] ]
let s:p.replace.right   = [ [ s:lfc.bg_subtle, s:lfc.green ],  [ s:lfc.bg_subtle, s:lfc.dark_green ] ]

" Insert mode
let s:p.insert.left     = [ [ s:lfc.bg_subtle, s:lfc.red ],  [ s:lfc.bg_subtle, s:lfc.dark_red ] ]
let s:p.insert.right    = [ [ s:lfc.bg_subtle, s:lfc.red ],  [ s:lfc.bg_subtle, s:lfc.dark_red ] ]

" Inactive split
let s:p.inactive.left   = [ [ s:lfc.dark_asphalt, s:lfc.bg_subtle ], [ s:lfc.dark_asphalt, s:lfc.bg_subtle ] ]
let s:p.inactive.middle = [ [ s:lfc.dark_asphalt, s:lfc.bg_subtle ] ]
let s:p.inactive.right  = [ [ s:lfc.dark_asphalt, s:lfc.bg_subtle ], [ s:lfc.dark_asphalt, s:lfc.bg_subtle ] ]

let g:lightline#colorscheme#challenger_deep#palette = lightline#colorscheme#flatten(s:p)
