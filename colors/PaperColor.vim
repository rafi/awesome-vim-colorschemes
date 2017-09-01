" Theme: PaperColor
" Author: Nikyle Nguyen <NLKNguyen@MSN.com>
" License: MIT
" Source: http://github.com/NLKNguyen/papercolor-theme

let s:version = '0.9.x'

" Note on navigating this source code:
" - Use folding feature to collapse/uncollapse blocks of marked code
"     zM to fold all markers in this file to see the structure of the source code
"     zR to unfold all recursively
"     za to toggle a fold
"     See: http://vim.wikia.com/wiki/Folding
" - The main section where functions are actually called is located at the end.
" - The first section right after this note is where themes are defined. Theme
"   designers only need to work on this section.

" THEMES: {{{

let s:themes = {}

" Theme name should be lowercase
let s:themes['default'] = {
      \   'maintainer'  : 'Nikyle Nguyen<NLKNguyen@MSN.com>',
      \   'source' : 'http://github.com/NLKNguyen/papercolor-theme',
      \   'description' : 'Original PaperColor Theme, inspired by Google Material Design',
      \ }

" Theme can have 'light' and/or 'dark' color palette.
" Color values can be HEX and/or 256-color. Use empty string '' if not provided.
" Only color00 -> color15 are required. The rest are optional.
let s:themes['default'].light = {
      \     'TEST_256_COLOR_CONSISTENCY' : 1,
      \     'palette' : {
      \       'color00' : ['#eeeeee', '255'],
      \       'color01' : ['#af0000', '124'],
      \       'color02' : ['#008700', '28'],
      \       'color03' : ['#5f8700', '64'],
      \       'color04' : ['#0087af', '31'],
      \       'color05' : ['#878787', '102'],
      \       'color06' : ['#005f87', '24'],
      \       'color07' : ['#444444', '238'],
      \       'color08' : ['#bcbcbc', '250'],
      \       'color09' : ['#d70000', '160'],
      \       'color10' : ['#d70087', '162'],
      \       'color11' : ['#8700af', '91'],
      \       'color12' : ['#d75f00', '166'],
      \       'color13' : ['#d75f00', '166'],
      \       'color14' : ['#005faf', '25'],
      \       'color15' : ['#005f87', '24'],
      \       'color16' : ['#0087af', '31'],
      \       'color17' : ['#008700', '28'],
      \       'cursor_fg' : ['#eeeeee', '255'],
      \       'cursor_bg' : ['#005f87', '24'],
      \       'cursorline' : ['#e4e4e4', '254'],
      \       'cursorcolumn' : ['#e4e4e4', '254'],
      \       'cursorlinenr_fg' : ['#af5f00', '130'],
      \       'cursorlinenr_bg' : ['#eeeeee', '255'],
      \       'popupmenu_fg' : ['#444444', '238'],
      \       'popupmenu_bg' : ['#d0d0d0', '252'],
      \       'search_fg' : ['#444444', '238'],
      \       'search_bg' : ['#ffff5f', '227'],
      \       'linenumber_fg' : ['#b2b2b2', '249'],
      \       'linenumber_bg' : ['#eeeeee', '255'],
      \       'vertsplit_fg' : ['#005f87', '24'],
      \       'vertsplit_bg' : ['#eeeeee', '255'],
      \       'statusline_active_fg' : ['#e4e4e4', '254'],
      \       'statusline_active_bg' : ['#005f87', '24'],
      \       'statusline_inactive_fg' : ['#444444', '238'],
      \       'statusline_inactive_bg' : ['#d0d0d0', '252'],
      \       'todo_fg' : ['#00af5f', '35'],
      \       'todo_bg' : ['#eeeeee', '255'],
      \       'error_fg' : ['#af0000', '124'],
      \       'error_bg' : ['#ffd7ff', '225'],
      \       'matchparen_bg' : ['#c6c6c6', '251'],
      \       'matchparen_fg' : ['#005f87', '24'],
      \       'visual_fg' : ['#eeeeee', '255'],
      \       'visual_bg' : ['#0087af', '31'],
      \       'folded_fg' : ['#0087af', '31'],
      \       'folded_bg' : ['#afd7ff', '153'],
      \       'wildmenu_fg': ['#444444', '238'],
      \       'wildmenu_bg': ['#ffff00', '226'],
      \       'spellbad':   ['#ffafd7', '218'],
      \       'spellcap':   ['#ffffaf', '229'],
      \       'spellrare':  ['#afff87', '156'],
      \       'spelllocal': ['#d7d7ff', '189'],
      \       'diffadd_fg':    ['#008700', '28'],
      \       'diffadd_bg':    ['#afffaf', '157'],
      \       'diffdelete_fg': ['#af0000', '124'],
      \       'diffdelete_bg': ['#ffd7ff', '225'],
      \       'difftext_fg':   ['#0087af', '31'],
      \       'difftext_bg':   ['#ffffd7', '230'],
      \       'diffchange_fg': ['#444444', '238'],
      \       'diffchange_bg': ['#ffd787', '222'],
      \       'tabline_bg':          ['#005f87', '24'],
      \       'tabline_active_fg':   ['#444444', '238'],
      \       'tabline_active_bg':   ['#e4e4e4', '254'],
      \       'tabline_inactive_fg': ['#eeeeee', '255'],
      \       'tabline_inactive_bg': ['#0087af', '31'],
      \       'buftabline_bg':          ['#005f87', '24'],
      \       'buftabline_current_fg':  ['#444444', '238'],
      \       'buftabline_current_bg':  ['#e4e4e4', '254'],
      \       'buftabline_active_fg': ['#eeeeee', '255'],
      \       'buftabline_active_bg': ['#005faf', '25'],
      \       'buftabline_inactive_fg': ['#eeeeee', '255'],
      \       'buftabline_inactive_bg': ['#0087af', '31']
      \     }
      \   }

let s:themes['default'].dark = {
      \     'TEST_256_COLOR_CONSISTENCY' : 1,
      \     'palette' : {
      \       'color00' : ['#1c1c1c', '234'],
      \       'color01' : ['#af005f', '125'],
      \       'color02' : ['#5faf00', '70'],
      \       'color03' : ['#d7af5f', '179'],
      \       'color04' : ['#5fafd7', '74'],
      \       'color05' : ['#808080', '244'],
      \       'color06' : ['#d7875f', '173'],
      \       'color07' : ['#d0d0d0', '252'],
      \       'color08' : ['#585858', '240'],
      \       'color09' : ['#5faf5f', '71'],
      \       'color10' : ['#afd700', '148'],
      \       'color11' : ['#af87d7', '140'],
      \       'color12' : ['#ffaf00', '214'],
      \       'color13' : ['#ff5faf', '205'],
      \       'color14' : ['#00afaf', '37'],
      \       'color15' : ['#5f8787', '66'],
      \       'color16' : ['#5fafd7', '74'],
      \       'color17' : ['#d7af00', '178'],
      \       'cursor_fg' : ['#1c1c1c', '234'],
      \       'cursor_bg' : ['#c6c6c6', '251'],
      \       'cursorline' : ['#303030', '236'],
      \       'cursorcolumn' : ['#303030', '236'],
      \       'cursorlinenr_fg' : ['#ffff00', '226'],
      \       'cursorlinenr_bg' : ['#1c1c1c', '234'],
      \       'popupmenu_fg' : ['#c6c6c6', '251'],
      \       'popupmenu_bg' : ['#303030', '236'],
      \       'search_fg' : ['#000000', '16'],
      \       'search_bg' : ['#00875f', '29'],
      \       'linenumber_fg' : ['#585858', '240'],
      \       'linenumber_bg' : ['#1c1c1c', '234'],
      \       'vertsplit_fg' : ['#5f8787', '66'],
      \       'vertsplit_bg' : ['#1c1c1c', '234'],
      \       'statusline_active_fg' : ['#1c1c1c', '234'],
      \       'statusline_active_bg' : ['#5f8787', '66'],
      \       'statusline_inactive_fg' : ['#bcbcbc', '250'],
      \       'statusline_inactive_bg' : ['#3a3a3a', '237'],
      \       'todo_fg' : ['#ff8700', '208'],
      \       'todo_bg' : ['#1c1c1c', '234'],
      \       'error_fg' : ['#af005f', '125'],
      \       'error_bg' : ['#5f0000', '52'],
      \       'matchparen_bg' : ['#4e4e4e', '239'],
      \       'matchparen_fg' : ['#c6c6c6', '251'],
      \       'visual_fg' : ['#000000', '16'],
      \       'visual_bg' : ['#8787af', '103'],
      \       'folded_fg' : ['#d787ff', '177'],
      \       'folded_bg' : ['#5f005f', '53'],
      \       'wildmenu_fg': ['#1c1c1c', '234'],
      \       'wildmenu_bg': ['#afd700', '148'],
      \       'tabline_bg':          ['#262626', '235'],
      \       'tabline_active_fg':   ['#121212', '233'],
      \       'tabline_active_bg':   ['#00afaf', '37'],
      \       'tabline_inactive_fg': ['#bcbcbc', '250'],
      \       'tabline_inactive_bg': ['#585858', '240'],
      \       'spellbad':   ['#5f0000', '52'],
      \       'spellcap':   ['#5f005f', '53'],
      \       'spellrare':  ['#005f00', '22'],
      \       'spelllocal': ['#00005f', '17'],
      \       'diffadd_fg':    ['#87d700', '112'],
      \       'diffadd_bg':    ['#005f00', '22'],
      \       'diffdelete_fg': ['#af005f', '125'],
      \       'diffdelete_bg': ['#5f0000', '52'],
      \       'difftext_fg':   ['#5fffff', '87'],
      \       'difftext_bg':   ['#008787', '30'],
      \       'diffchange_fg': ['#d0d0d0', '252'],
      \       'diffchange_bg': ['#005f5f', '23']
      \     }
      \   }


" }}}

" Get Selected Theme: {{{

let s:theme_name = 'default'

if exists("g:PaperColor_Theme") " Users expressed theme preference
  let lowercase_theme_name = tolower(g:PaperColor_Theme)

  if has_key(s:themes, lowercase_theme_name) "the name is part of built-in themes
    let s:theme_name = lowercase_theme_name

  else "expect a variable with a designated theme name
    let theme_variable =  "g:PaperColor_Theme_" . lowercase_theme_name

    if exists(theme_variable)
      " Register custom theme to theme dictionary
      let s:themes[lowercase_theme_name] = {theme_variable}
      let s:theme_name = lowercase_theme_name
    else
      echom "Cannot find variable " . theme_variable
      " Still use 'default' theme
    endif

  endif
endif

let s:selected_theme = s:themes[s:theme_name]


" }}}

" Command to show theme information {{{
fun! g:PaperColor()
  echom 'PaperColor Theme Framework'
  echom '  version ' . s:version
  echom '  by Nikyle Nguyen et al.'
  echom '  at https://github.com/NLKNguyen/papercolor-theme/'
  echom ' '
  echom 'Current theme: ' . s:theme_name
  echom '  ' . s:selected_theme['description']
  echom '  by ' . s:selected_theme['maintainer']
  echom '  at ' . s:selected_theme['source']

  " TODO: add diff display for theme color names between 'default' and current
  " theme if it is a custom theme, i.e. child theme.
endfun

" @brief command alias for g:PaperColor()
command! -nargs=0 PaperColor :call g:PaperColor()
" }}}

" Get Theme Variant: either dark or light  {{{
let s:selected_variant = 'dark'

let s:is_dark=(&background == 'dark')

if s:is_dark
  if has_key(s:selected_theme, 'dark')
    let s:selected_variant = 'dark'
  else " in case the theme only provides the other variant
    let s:selected_variant = 'light'
  endif

else " is light background
  if has_key(s:selected_theme, 'light')
    let s:selected_variant = 'light'
  else " in case the theme only provides the other variant
    let s:selected_variant = 'dark'
  endif
endif

let s:palette = s:selected_theme[s:selected_variant].palette
" }}}

" Systematic User-Config Options: {{{
" Example config in .vimrc
" let g:PaperColor_Theme_Options = {
"       \   'theme': {
"       \     'default': {
"       \       'allow_bold': 1,
"       \       'allow_italic': 0,
"       \       'transparent_background': 1
"       \     }
"       \   },
"       \   'language': {
"       \     'python': {
"       \       'highlight_builtins' : 1
"       \     },
"       \     'c': {
"       \       'highlight_builtins' : 1
"       \     },
"       \     'cpp': {
"       \       'highlight_standard_library': 1
"       \     }
"       \   }
"       \ }
"
let s:options = {}
if exists("g:PaperColor_Theme_Options")
  let s:options = g:PaperColor_Theme_Options
endif

" }}}

" Theme Options: {{{
" Part of user-config options
let s:theme_options = {}
if has_key(s:options, 'theme')
  let s:theme_options = s:options['theme']
endif


" Function to obtain theme option for the current theme
" @param option - string
" @return the value of that option if specified; empty string otherwise
" Example: s:Theme_Options('transparent_background')
"     returns 1 if there is an option for current theme in `theme` section in
"     g:PaperColor_Theme_Options such as:
"       'theme': {
"       \   'default': {
"       \     'transparent_background': 1
"       \   }
"       }
"     OR it could specify for the exact light or dark variant of the theme,
"     which will take higher precedence for the current theme variant
"       'theme': {
"       \   'default': {
"       \     'transparent_background': 0
"       \   },
"       \   'default.light': {
"       \     'transparent_background': 1
"       \   }
"       }
fun! s:Theme_Options(option)
  let l:value = ''

  let l:variant = 'light'
  if s:is_dark
    let l:variant = 'dark'
  endif
  let l:specific_theme_variant = s:theme_name . '.' . l:variant

  if has_key(s:theme_options, l:specific_theme_variant)
    let l:theme_option = s:theme_options[l:specific_theme_variant]
    if has_key(l:theme_option, a:option)
      let l:value = l:theme_option[a:option]
    endif
  elseif has_key(s:theme_options, s:theme_name)
    let l:theme_option = s:theme_options[s:theme_name]
    if has_key(l:theme_option, a:option)
      let l:value = l:theme_option[a:option]
    endif
  endif

  return l:value
endfun

" These options will be checked at many place so better be cached to variables
let s:TRANSPARENT_BACKGROUND = s:Theme_Options('transparent_background') == 1


" }}}

" Language Options: {{{
" Part of user-config options
let s:language_options = {}
if has_key(s:options, 'language')
  let s:language_options = s:options['language']
endif

" Function to obtain a language option
" @param option - string pattern [language].[option]
" @param value - number or string
" @return the option value if it is provided; empty string otherwise
" Example: s:Language_Options('python.highlight_builtins', 1)
"     returns 1 if there is an option in `language` section in
"     g:PaperColor_Theme_Options such as:
"       'language': {
"       \   'python': {
"       \     'highlight_builtins': 1
"       \   }
"       }
fun! s:Language_Options(option)
  let l:parts = split(a:option, "\\.")
  let l:language = l:parts[0]
  let l:option = l:parts[1]

  if has_key(s:language_options, l:language)
    let l:language_option = s:language_options[l:language]
    if has_key(l:language_option, l:option)
      return l:language_option[l:option]
    endif
  endif

  return ''
endfun

" }}}

" HEX TO 256-COLOR CONVERTER: {{{
" Returns an approximate grey index for the given grey level
fun! s:grey_number(x)
  if &t_Co == 88
    if a:x < 23
      return 0
    elseif a:x < 69
      return 1
    elseif a:x < 103
      return 2
    elseif a:x < 127
      return 3
    elseif a:x < 150
      return 4
    elseif a:x < 173
      return 5
    elseif a:x < 196
      return 6
    elseif a:x < 219
      return 7
    elseif a:x < 243
      return 8
    else
      return 9
    endif
  else
    if a:x < 14
      return 0
    else
      let l:n = (a:x - 8) / 10
      let l:m = (a:x - 8) % 10
      if l:m < 5
        return l:n
      else
        return l:n + 1
      endif
    endif
  endif
endfun

" Returns the actual grey level represented by the grey index
fun! s:grey_level(n)
  if &t_Co == 88
    if a:n == 0
      return 0
    elseif a:n == 1
      return 46
    elseif a:n == 2
      return 92
    elseif a:n == 3
      return 115
    elseif a:n == 4
      return 139
    elseif a:n == 5
      return 162
    elseif a:n == 6
      return 185
    elseif a:n == 7
      return 208
    elseif a:n == 8
      return 231
    else
      return 255
    endif
  else
    if a:n == 0
      return 0
    else
      return 8 + (a:n * 10)
    endif
  endif
endfun

" Returns the palette index for the given grey index
fun! s:grey_colour(n)
  if &t_Co == 88
    if a:n == 0
      return 16
    elseif a:n == 9
      return 79
    else
      return 79 + a:n
    endif
  else
    if a:n == 0
      return 16
    elseif a:n == 25
      return 231
    else
      return 231 + a:n
    endif
  endif
endfun

" Returns an approximate colour index for the given colour level
fun! s:rgb_number(x)
  if &t_Co == 88
    if a:x < 69
      return 0
    elseif a:x < 172
      return 1
    elseif a:x < 230
      return 2
    else
      return 3
    endif
  else
    if a:x < 75
      return 0
    else
      let l:n = (a:x - 55) / 40
      let l:m = (a:x - 55) % 40
      if l:m < 20
        return l:n
      else
        return l:n + 1
      endif
    endif
  endif
endfun

" Returns the actual colour level for the given colour index
fun! s:rgb_level(n)
  if &t_Co == 88
    if a:n == 0
      return 0
    elseif a:n == 1
      return 139
    elseif a:n == 2
      return 205
    else
      return 255
    endif
  else
    if a:n == 0
      return 0
    else
      return 55 + (a:n * 40)
    endif
  endif
endfun

" Returns the palette index for the given R/G/B colour indices
fun! s:rgb_colour(x, y, z)
  if &t_Co == 88
    return 16 + (a:x * 16) + (a:y * 4) + a:z
  else
    return 16 + (a:x * 36) + (a:y * 6) + a:z
  endif
endfun

" Returns the palette index to approximate the given R/G/B colour levels
fun! s:colour(r, g, b)
  " Get the closest grey
  let l:gx = s:grey_number(a:r)
  let l:gy = s:grey_number(a:g)
  let l:gz = s:grey_number(a:b)

  " Get the closest colour
  let l:x = s:rgb_number(a:r)
  let l:y = s:rgb_number(a:g)
  let l:z = s:rgb_number(a:b)

  if l:gx == l:gy && l:gy == l:gz
    " There are two possibilities
    let l:dgr = s:grey_level(l:gx) - a:r
    let l:dgg = s:grey_level(l:gy) - a:g
    let l:dgb = s:grey_level(l:gz) - a:b
    let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
    let l:dr = s:rgb_level(l:gx) - a:r
    let l:dg = s:rgb_level(l:gy) - a:g
    let l:db = s:rgb_level(l:gz) - a:b
    let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
    if l:dgrey < l:drgb
      " Use the grey
      return s:grey_colour(l:gx)
    else
      " Use the colour
      return s:rgb_colour(l:x, l:y, l:z)
    endif
  else
    " Only one possibility
    return s:rgb_colour(l:x, l:y, l:z)
  endif
endfun

" Returns the palette index to approximate the '#rrggbb' hex string
fun! s:to_256(rgb)
  let l:r = ("0x" . strpart(a:rgb, 1, 2)) + 0
  let l:g = ("0x" . strpart(a:rgb, 3, 2)) + 0
  let l:b = ("0x" . strpart(a:rgb, 5, 2)) + 0

  return s:colour(l:r, l:g, l:b)
endfun



" }}}

" 256-COLOR TO HEX TABLE: {{{

""" Xterm 256 color dictionary
" See: http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
"
let s:to_HEX = {
      \ '00':  '#000000',  '01':  '#800000',  '02':  '#008000',  '03':  '#808000',  '04':  '#000080',
      \ '05':  '#800080',  '06':  '#008080',  '07':  '#c0c0c0',  '08':  '#808080',  '09':  '#ff0000',
      \ '10':  '#00ff00',  '11':  '#ffff00',  '12':  '#0000ff',  '13':  '#ff00ff',  '14':  '#00ffff',
      \ '15':  '#ffffff',  '16':  '#000000',  '17':  '#00005f',  '18':  '#000087',  '19':  '#0000af',
      \ '20':  '#0000d7',  '21':  '#0000ff',  '22':  '#005f00',  '23':  '#005f5f',  '24':  '#005f87',
      \ '25':  '#005faf',  '26':  '#005fd7',  '27':  '#005fff',  '28':  '#008700',  '29':  '#00875f',
      \ '30':  '#008787',  '31':  '#0087af',  '32':  '#0087d7',  '33':  '#0087ff',  '34':  '#00af00',
      \ '35':  '#00af5f',  '36':  '#00af87',  '37':  '#00afaf',  '38':  '#00afd7',  '39':  '#00afff',
      \ '40':  '#00d700',  '41':  '#00d75f',  '42':  '#00d787',  '43':  '#00d7af',  '44':  '#00d7d7',
      \ '45':  '#00d7ff',  '46':  '#00ff00',  '47':  '#00ff5f',  '48':  '#00ff87',  '49':  '#00ffaf',
      \ '50':  '#00ffd7',  '51':  '#00ffff',  '52':  '#5f0000',  '53':  '#5f005f',  '54':  '#5f0087',
      \ '55':  '#5f00af',  '56':  '#5f00d7',  '57':  '#5f00ff',  '58':  '#5f5f00',  '59':  '#5f5f5f',
      \ '60':  '#5f5f87',  '61':  '#5f5faf',  '62':  '#5f5fd7',  '63':  '#5f5fff',  '64':  '#5f8700',
      \ '65':  '#5f875f',  '66':  '#5f8787',  '67':  '#5f87af',  '68':  '#5f87d7',  '69':  '#5f87ff',
      \ '70':  '#5faf00',  '71':  '#5faf5f',  '72':  '#5faf87',  '73':  '#5fafaf',  '74':  '#5fafd7',
      \ '75':  '#5fafff',  '76':  '#5fd700',  '77':  '#5fd75f',  '78':  '#5fd787',  '79':  '#5fd7af',
      \ '80':  '#5fd7d7',  '81':  '#5fd7ff',  '82':  '#5fff00',  '83':  '#5fff5f',  '84':  '#5fff87',
      \ '85':  '#5fffaf',  '86':  '#5fffd7',  '87':  '#5fffff',  '88':  '#870000',  '89':  '#87005f',
      \ '90':  '#870087',  '91':  '#8700af',  '92':  '#8700d7',  '93':  '#8700ff',  '94':  '#875f00',
      \ '95':  '#875f5f',  '96':  '#875f87',  '97':  '#875faf',  '98':  '#875fd7',  '99':  '#875fff',
      \ '100': '#878700',  '101': '#87875f',  '102': '#878787',  '103': '#8787af',  '104': '#8787d7',
      \ '105': '#8787ff',  '106': '#87af00',  '107': '#87af5f',  '108': '#87af87',  '109': '#87afaf',
      \ '110': '#87afd7',  '111': '#87afff',  '112': '#87d700',  '113': '#87d75f',  '114': '#87d787',
      \ '115': '#87d7af',  '116': '#87d7d7',  '117': '#87d7ff',  '118': '#87ff00',  '119': '#87ff5f',
      \ '120': '#87ff87',  '121': '#87ffaf',  '122': '#87ffd7',  '123': '#87ffff',  '124': '#af0000',
      \ '125': '#af005f',  '126': '#af0087',  '127': '#af00af',  '128': '#af00d7',  '129': '#af00ff',
      \ '130': '#af5f00',  '131': '#af5f5f',  '132': '#af5f87',  '133': '#af5faf',  '134': '#af5fd7',
      \ '135': '#af5fff',  '136': '#af8700',  '137': '#af875f',  '138': '#af8787',  '139': '#af87af',
      \ '140': '#af87d7',  '141': '#af87ff',  '142': '#afaf00',  '143': '#afaf5f',  '144': '#afaf87',
      \ '145': '#afafaf',  '146': '#afafd7',  '147': '#afafff',  '148': '#afd700',  '149': '#afd75f',
      \ '150': '#afd787',  '151': '#afd7af',  '152': '#afd7d7',  '153': '#afd7ff',  '154': '#afff00',
      \ '155': '#afff5f',  '156': '#afff87',  '157': '#afffaf',  '158': '#afffd7',  '159': '#afffff',
      \ '160': '#d70000',  '161': '#d7005f',  '162': '#d70087',  '163': '#d700af',  '164': '#d700d7',
      \ '165': '#d700ff',  '166': '#d75f00',  '167': '#d75f5f',  '168': '#d75f87',  '169': '#d75faf',
      \ '170': '#d75fd7',  '171': '#d75fff',  '172': '#d78700',  '173': '#d7875f',  '174': '#d78787',
      \ '175': '#d787af',  '176': '#d787d7',  '177': '#d787ff',  '178': '#d7af00',  '179': '#d7af5f',
      \ '180': '#d7af87',  '181': '#d7afaf',  '182': '#d7afd7',  '183': '#d7afff',  '184': '#d7d700',
      \ '185': '#d7d75f',  '186': '#d7d787',  '187': '#d7d7af',  '188': '#d7d7d7',  '189': '#d7d7ff',
      \ '190': '#d7ff00',  '191': '#d7ff5f',  '192': '#d7ff87',  '193': '#d7ffaf',  '194': '#d7ffd7',
      \ '195': '#d7ffff',  '196': '#ff0000',  '197': '#ff005f',  '198': '#ff0087',  '199': '#ff00af',
      \ '200': '#ff00d7',  '201': '#ff00ff',  '202': '#ff5f00',  '203': '#ff5f5f',  '204': '#ff5f87',
      \ '205': '#ff5faf',  '206': '#ff5fd7',  '207': '#ff5fff',  '208': '#ff8700',  '209': '#ff875f',
      \ '210': '#ff8787',  '211': '#ff87af',  '212': '#ff87d7',  '213': '#ff87ff',  '214': '#ffaf00',
      \ '215': '#ffaf5f',  '216': '#ffaf87',  '217': '#ffafaf',  '218': '#ffafd7',  '219': '#ffafff',
      \ '220': '#ffd700',  '221': '#ffd75f',  '222': '#ffd787',  '223': '#ffd7af',  '224': '#ffd7d7',
      \ '225': '#ffd7ff',  '226': '#ffff00',  '227': '#ffff5f',  '228': '#ffff87',  '229': '#ffffaf',
      \ '230': '#ffffd7',  '231': '#ffffff',  '232': '#080808',  '233': '#121212',  '234': '#1c1c1c',
      \ '235': '#262626',  '236': '#303030',  '237': '#3a3a3a',  '238': '#444444',  '239': '#4e4e4e',
      \ '240': '#585858',  '241': '#626262',  '242': '#6c6c6c',  '243': '#767676',  '244': '#808080',
      \ '245': '#8a8a8a',  '246': '#949494',  '247': '#9e9e9e',  '248': '#a8a8a8',  '249': '#b2b2b2',
      \ '250': '#bcbcbc',  '251': '#c6c6c6',  '252': '#d0d0d0',  '253': '#dadada',  '254': '#e4e4e4',
      \ '255': '#eeeeee' }

" }}}

" COLOR MODE IDENTIFICATION: {{{
let s:MODE_16_COLOR = 0
let s:MODE_256_COLOR = 1
let s:MODE_GUI_COLOR = 2

if has("gui_running")  || has('termguicolors') && &termguicolors || has('nvim') && $NVIM_TUI_ENABLE_TRUE_COLOR
  let s:mode = s:MODE_GUI_COLOR
elseif (&t_Co >= 256)
  let s:mode = s:MODE_256_COLOR
else
  let s:mode = s:MODE_16_COLOR
endif

" }}}

" COLOR MODE ADAPTATION: {{{
" Handle Preprocessing For Current Color Set If Necessary
fun! s:adapt_to_environment()
  if s:mode == s:MODE_GUI_COLOR
    let s:ft_bold    = " gui=bold "
    let s:ft_italic  = " gui=italic "
    let s:ft_none    = " gui=none "
    let s:ft_reverse = " gui=reverse "
    " TODO: if require auto-gui-color coversion
  elseif s:mode == s:MODE_256_COLOR
    let s:ft_bold    = " cterm=bold "
    let s:ft_italic  = " cterm=italic "
    let s:ft_none    = " cterm=none "
    let s:ft_reverse = " cterm=reverse "
    " TODO: if require auto-256-color coversion
  else
    let s:ft_bold    = ""
    let s:ft_italic  = ""
    let s:ft_none    = " cterm=none "
    let s:ft_reverse = " cterm=reverse "
  endif
endfun
" }}}



" SET COLOR VARIABLES: {{{
fun! s:set_color_variables()

  " Helper: {{{
  " -------
  " Function to dynamically generate variables that store the color strings
  " for setting highlighting. Each color name will have 2 variables with prefix
  " s:fg_ and s:bg_. For example:
  " if a:color_name is 'Normal' and a:color_value is ['#000000', '0', 'Black'],
  " the following 2 variables will be created:
  "   s:fg_Normal that stores the string ' guifg=#000000 '
  "   s:bg_Normal that stores the string ' guibg=#000000 '
  " Depending on the color mode, ctermfg and ctermbg will be either 0 or Black
  "
  " Rationale:
  " The whole purpose is for speed. We generate these ahead of time so that we
  " don't have to do look up or do any if-branch when we set the highlightings.
  "
  " Furthermore, multiple function definitions for each mode actually reduces
  " the need for multiple if-branches inside a single function. This is not
  " pretty, but Vim Script is slow, so reducing if-branches in function that is
  " often called helps speeding things up quite a bit. Think of this like macro.
  "
  " If you are familiar with the old code base (v0.9 and ealier), this way of
  " generate variables dramatically increases the loading speed.
  " None of previous optimization tricks gets anywhere near this.
  if s:mode == s:MODE_GUI_COLOR
    fun! s:create_color_variables(color_name, color_value)
      let {'s:fg_' . a:color_name} = ' guifg=' . a:color_value[0] . ' '
      let {'s:bg_' . a:color_name} = ' guibg=' . a:color_value[0] . ' '
    endfun
  elseif s:mode == s:MODE_256_COLOR
    fun! s:create_color_variables(color_name, color_value)
      let {'s:fg_' . a:color_name} = ' ctermfg=' . a:color_value[1] . ' '
      let {'s:bg_' . a:color_name} = ' ctermbg=' . a:color_value[1] . ' '
    endfun
  else
    fun! s:create_color_variables(color_name, color_value)
      let {'s:fg_' . a:color_name} = ' ctermfg=' . a:color_value[2] . ' '
      let {'s:bg_' . a:color_name} = ' ctermbg=' . a:color_value[2] . ' '
    endfun
  endif
  " }}}

  " Color value format: Array [<GUI COLOR/HEX >, <256-Base>, <16-Base>]
  " 16-Base is terminal's native color palette that can be alternated through
  " the terminal settings. The 16-color names are according to `:h cterm-colors`

  " BASIC COLORS:
  " color00-15 are required by all themes.
  " These are also how the terminal color palette for the target theme should be.
  " See README for theme design guideline
  "
  " An example format of the below variable's value: ['#262626', '234', 'Black']
  " Where the 1st value is HEX color for GUI Vim, 2nd value is for 256-color terminal,
  " and the color name on the right is for 16-color terminal (the actual terminal colors
  " can be different from what the color names suggest). See :h cterm-colors
  "
  " Depending on the provided color palette and current Vim, the 1st and 2nd
  " parameter might not exist, for example, on 16-color terminal, the variables below
  " only store the color names to use the terminal color palette which is the only
  " thing available therefore no need for GUI-color or 256-color.


  call s:create_color_variables('background', get(s:palette, 'color00') + ['Black'])
  call s:create_color_variables('negative', get(s:palette, 'color01') + ['DarkRed'])
  call s:create_color_variables('positive', get(s:palette, 'color02') + ['DarkGreen'])
  call s:create_color_variables('olive', get(s:palette, 'color03') + ['DarkYellow']) " string
  call s:create_color_variables('neutral', get(s:palette, 'color04') + ['DarkBlue'])
  call s:create_color_variables('comment', get(s:palette, 'color05') + ['DarkMagenta'])
  call s:create_color_variables('navy', get(s:palette, 'color06') + ['DarkCyan']) " storageclass
  call s:create_color_variables('foreground', get(s:palette, 'color07') + ['LightGray'])

  call s:create_color_variables('nontext', get(s:palette, 'color08') + ['DarkGray'])
  call s:create_color_variables('red', get(s:palette, 'color09') + ['LightRed']) " import / try/catch
  call s:create_color_variables('pink', get(s:palette, 'color10') + ['LightGreen']) " statement, type
  call s:create_color_variables('purple', get(s:palette, 'color11') + ['LightYellow']) " if / conditional
  call s:create_color_variables('accent', get(s:palette, 'color12') + ['LightBlue'])
  call s:create_color_variables('orange', get(s:palette, 'color13') + ['LightMagenta']) " number
  call s:create_color_variables('blue', get(s:palette, 'color14') + ['LightCyan']) " other keyword
  call s:create_color_variables('highlight', get(s:palette, 'color15') + ['White'])

  " Note: special case for FoldColumn group. I want to get rid of this case.
  call s:create_color_variables('transparent', [get(s:palette, 'color00')[0], 'none', 'none'])

  " EXTENDED COLORS:
  " From here on, all colors are optional and must have default values (3rd parameter of the
  " `get` command) that point to the above basic colors in case the target theme doesn't
  " provide the extended colors. The default values should be reasonably sensible.
  " The terminal color must be provided also.

  call s:create_color_variables('aqua', get(s:palette, 'color16', get(s:palette, 'color14')) + ['LightCyan'])
  call s:create_color_variables('green', get(s:palette, 'color17', get(s:palette, 'color13')) + ['LightMagenta'])
  call s:create_color_variables('wine', get(s:palette, 'color18', get(s:palette, 'color11')) + ['LightYellow'])

  " LineNumber: when set number
  call s:create_color_variables('linenumber_fg', get(s:palette, 'linenumber_fg', get(s:palette, 'color08')) + ['DarkGray'])
  call s:create_color_variables('linenumber_bg', get(s:palette, 'linenumber_bg', get(s:palette, 'color00')) + ['Black'])

  " Vertical Split: when there are more than 1 window side by side, ex: <C-W><C-V>
  call s:create_color_variables('vertsplit_fg', get(s:palette, 'vertsplit_fg', get(s:palette, 'color15')) + ['White'])
  call s:create_color_variables('vertsplit_bg', get(s:palette, 'vertsplit_bg', get(s:palette, 'color00')) + ['Black'])

  " Statusline: when set status=2
  call s:create_color_variables('statusline_active_fg', get(s:palette, 'statusline_active_fg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('statusline_active_bg', get(s:palette, 'statusline_active_bg', get(s:palette, 'color15')) + ['White'])
  call s:create_color_variables('statusline_inactive_fg', get(s:palette, 'statusline_inactive_fg', get(s:palette, 'color07')) + ['LightGray'])
  call s:create_color_variables('statusline_inactive_bg', get(s:palette, 'statusline_inactive_bg', get(s:palette, 'color08')) + ['DarkGray'])


  " Cursor: in normal mode
  call s:create_color_variables('cursor_fg', get(s:palette, 'cursor_fg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('cursor_bg', get(s:palette, 'cursor_bg', get(s:palette, 'color07')) + ['LightGray'])

  call s:create_color_variables('cursorline', get(s:palette, 'cursorline', get(s:palette, 'color00')) + ['Black'])

  " CursorColumn: when set cursorcolumn
  call s:create_color_variables('cursorcolumn', get(s:palette, 'cursorcolumn', get(s:palette, 'color00')) + ['Black'])

  " CursorLine Number: when set cursorline number
  call s:create_color_variables('cursorlinenr_fg', get(s:palette, 'cursorlinenr_fg', get(s:palette, 'color13')) + ['LightMagenta'])
  call s:create_color_variables('cursorlinenr_bg', get(s:palette, 'cursorlinenr_bg', get(s:palette, 'color00')) + ['Black'])

  " Popup Menu: when <C-X><C-N> for autocomplete
  call s:create_color_variables('popupmenu_fg', get(s:palette, 'popupmenu_fg', get(s:palette, 'color07')) + ['LightGray'])
  call s:create_color_variables('popupmenu_bg', get(s:palette, 'popupmenu_bg', get(s:palette, 'color08')) + ['DarkGray'])

  " Search: ex: when * on a word
  call s:create_color_variables('search_fg', get(s:palette, 'search_fg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('search_bg', get(s:palette, 'search_bg', get(s:palette, 'color15')) + ['Yellow'])

  " Todo: ex: TODO
  call s:create_color_variables('todo_fg', get(s:palette, 'todo_fg', get(s:palette, 'color05')) + ['LightYellow'])
  call s:create_color_variables('todo_bg', get(s:palette, 'todo_bg', get(s:palette, 'color00')) + ['Black'])

  " Error: ex: turn spell on and have invalid words
  call s:create_color_variables('error_fg', get(s:palette, 'error_fg', get(s:palette, 'color01')) + ['DarkRed'])
  call s:create_color_variables('error_bg', get(s:palette, 'error_bg', get(s:palette, 'color00')) + ['Black'])

  " Match Parenthesis: selecting an opening/closing pair and the other one will be highlighted
  call s:create_color_variables('matchparen_fg', get(s:palette, 'matchparen_fg', get(s:palette, 'color00')) + ['LightMagenta'])
  call s:create_color_variables('matchparen_bg', get(s:palette, 'matchparen_bg', get(s:palette, 'color05')) + ['Black'])

  " Visual:
  call s:create_color_variables('visual_fg', get(s:palette, 'visual_fg', get(s:palette, 'color08')) + ['Black'])
  call s:create_color_variables('visual_bg', get(s:palette, 'visual_bg', get(s:palette, 'color07')) + ['White'])

  " Folded:
  call s:create_color_variables('folded_fg', get(s:palette, 'folded_fg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('folded_bg', get(s:palette, 'folded_bg', get(s:palette, 'color05')) + ['DarkYellow'])

  " WildMenu: Autocomplete command, ex: :color <tab><tab>
  call s:create_color_variables('wildmenu_fg', get(s:palette, 'wildmenu_fg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('wildmenu_bg', get(s:palette, 'wildmenu_bg', get(s:palette, 'color06')) + ['LightGray'])

  " Spelling: when spell on and there are spelling problems like this for example: papercolor. a vim color scheme
  call s:create_color_variables('spellbad', get(s:palette, 'spellbad', get(s:palette, 'color04')) + ['DarkRed'])
  call s:create_color_variables('spellcap', get(s:palette, 'spellcap', get(s:palette, 'color05')) + ['DarkMagenta'])
  call s:create_color_variables('spellrare', get(s:palette, 'spellrare', get(s:palette, 'color06')) + ['DarkYellow'])
  call s:create_color_variables('spelllocal', get(s:palette, 'spelllocal', get(s:palette, 'color01')) + ['DarkBlue'])

  " Diff:
  call s:create_color_variables('diffadd_fg', get(s:palette, 'diffadd_fg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('diffadd_bg', get(s:palette, 'diffadd_bg', get(s:palette, 'color02')) + ['DarkGreen'])

  call s:create_color_variables('diffdelete_fg', get(s:palette, 'diffdelete_fg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('diffdelete_bg', get(s:palette, 'diffdelete_bg', get(s:palette, 'color04')) + ['DarkRed'])

  call s:create_color_variables('difftext_fg', get(s:palette, 'difftext_fg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('difftext_bg', get(s:palette, 'difftext_bg', get(s:palette, 'color06')) + ['DarkYellow'])

  call s:create_color_variables('diffchange_fg', get(s:palette, 'diffchange_fg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('diffchange_bg', get(s:palette, 'diffchange_bg', get(s:palette, 'color14')) + ['LightYellow'])

  " Tabline: when having tabs, ex: :tabnew
  call s:create_color_variables('tabline_bg', get(s:palette, 'tabline_bg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('tabline_active_fg', get(s:palette, 'tabline_active_fg', get(s:palette, 'color07')) + ['LightGray'])
  call s:create_color_variables('tabline_active_bg', get(s:palette, 'tabline_active_bg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('tabline_inactive_fg', get(s:palette, 'tabline_inactive_fg', get(s:palette, 'color07')) + ['Black'])
  call s:create_color_variables('tabline_inactive_bg', get(s:palette, 'tabline_inactive_bg', get(s:palette, 'color08')) + ['DarkMagenta'])

  " Plugin: BufTabLine https://github.com/ap/vim-buftabline
  call s:create_color_variables('buftabline_bg', get(s:palette, 'buftabline_bg', get(s:palette, 'color00')) + ['Black'])
  call s:create_color_variables('buftabline_current_fg', get(s:palette, 'buftabline_current_fg', get(s:palette, 'color07')) + ['LightGray'])
  call s:create_color_variables('buftabline_current_bg', get(s:palette, 'buftabline_current_bg', get(s:palette, 'color05')) + ['DarkMagenta'])
  call s:create_color_variables('buftabline_active_fg', get(s:palette, 'buftabline_active_fg', get(s:palette, 'color07')) + ['LightGray'])
  call s:create_color_variables('buftabline_active_bg', get(s:palette, 'buftabline_active_bg', get(s:palette, 'color12')) + ['LightBlue'])
  call s:create_color_variables('buftabline_inactive_fg', get(s:palette, 'buftabline_inactive_fg', get(s:palette, 'color07')) + ['LightGray'])
  call s:create_color_variables('buftabline_inactive_bg', get(s:palette, 'buftabline_inactive_bg', get(s:palette, 'color00')) + ['Black'])

  " Neovim terminal colors https://neovim.io/doc/user/nvim_terminal_emulator.html#nvim-terminal-emulator-configuration
  " TODO: Fix this
  let g:terminal_color_0=get(s:palette, 'color00')[0]
  let g:terminal_color_1=get(s:palette, 'color01')[0]
  let g:terminal_color_2=get(s:palette, 'color02')[0]
  let g:terminal_color_3=get(s:palette, 'color03')[0]
  let g:terminal_color_4=get(s:palette, 'color04')[0]
  let g:terminal_color_5=get(s:palette, 'color05')[0]
  let g:terminal_color_6=get(s:palette, 'color06')[0]
  let g:terminal_color_7=get(s:palette, 'color07')[0]
  let g:terminal_color_8=get(s:palette, 'color08')[0]
  let g:terminal_color_9=get(s:palette, 'color09')[0]
  let g:terminal_color_10=get(s:palette, 'color10')[0]
  let g:terminal_color_11=get(s:palette, 'color11')[0]
  let g:terminal_color_12=get(s:palette, 'color12')[0]
  let g:terminal_color_13=get(s:palette, 'color13')[0]
  let g:terminal_color_14=get(s:palette, 'color14')[0]
  let g:terminal_color_15=get(s:palette, 'color15')[0]

endfun
" }}}

" SET SYNTAX HIGHLIGHTING: {{{

fun! s:set_syntax_highlighting()

  if s:TRANSPARENT_BACKGROUND
    exec 'hi Normal' . s:fg_foreground
    " Switching between dark & light variant through `set background`
    " NOTE: Handle background switching right after `Normal` group because of
    " God-know-why reason. Not doing this way had caused issue before
    if s:is_dark " DARK VARIANT
      set background=dark
    else " LIGHT VARIANT
      set background=light
    endif

    exec 'hi NonText' . s:fg_nontext
    exec 'hi LineNr' . s:fg_linenumber_fg
    exec 'hi Conceal' . s:fg_linenumber_fg
    exec 'hi VertSplit' . s:fg_vertsplit_fg . s:ft_none
    exec 'hi FoldColumn' . s:fg_folded_fg . s:bg_transparent . s:ft_none
  else
    exec 'hi Normal' . s:fg_foreground . s:bg_background
    " Switching between dark & light variant through `set background`
    if s:is_dark " DARK VARIANT
      set background=dark
    else " LIGHT VARIANT
      set background=light
    endif

    exec 'hi NonText' . s:fg_nontext . s:bg_background
    exec 'hi LineNr' . s:fg_linenumber_fg . s:bg_linenumber_bg
    exec 'hi Conceal' . s:fg_linenumber_fg . s:bg_linenumber_bg
    exec 'hi VertSplit' . s:fg_vertsplit_bg . s:bg_vertsplit_fg
    exec 'hi FoldColumn' . s:fg_folded_fg . s:bg_background . s:ft_none
  endif

  exec 'hi Cursor' . s:fg_cursor_fg . s:bg_cursor_bg
  exec 'hi SpecialKey' . s:fg_nontext
  exec 'hi Search' . s:fg_search_fg . s:bg_search_bg
  exec 'hi StatusLine' . s:fg_statusline_active_bg . s:bg_statusline_active_fg
  exec 'hi StatusLineNC' . s:fg_statusline_inactive_bg . s:bg_statusline_inactive_fg
  exec 'hi Visual' . s:fg_visual_fg . s:bg_visual_bg
  exec 'hi Directory' . s:fg_blue
  exec 'hi ModeMsg' . s:fg_olive
  exec 'hi MoreMsg' . s:fg_olive
  exec 'hi Question' . s:fg_olive
  exec 'hi WarningMsg' . s:fg_pink
  exec 'hi MatchParen' . s:fg_matchparen_fg . s:bg_matchparen_bg
  exec 'hi Folded' . s:fg_folded_fg . s:bg_folded_bg
  exec 'hi WildMenu' . s:fg_wildmenu_fg . s:bg_wildmenu_bg . s:ft_bold

  if version >= 700
    exec 'hi CursorLine'  . s:bg_cursorline . s:ft_none
    if s:mode == s:MODE_16_COLOR
      exec 'hi CursorLineNr' . s:fg_cursorlinenr_fg . s:bg_cursorlinenr_bg
    else
      exec 'hi CursorLineNr' . s:fg_cursorlinenr_fg . s:bg_cursorlinenr_bg . s:ft_none
    endif
    exec 'hi CursorColumn'  . s:bg_cursorcolumn . s:ft_none
    exec 'hi PMenu' . s:fg_popupmenu_fg . s:bg_popupmenu_bg . s:ft_none
    exec 'hi PMenuSel' . s:fg_popupmenu_fg . s:bg_popupmenu_bg . s:ft_reverse
    if s:TRANSPARENT_BACKGROUND
      exec 'hi SignColumn' . s:fg_green . s:ft_none
    else
      exec 'hi SignColumn' . s:fg_green . s:bg_background . s:ft_none
    endif
  end
  if version >= 703
    exec 'hi ColorColumn'  . s:bg_cursorcolumn . s:ft_none
  end

  exec 'hi TabLine' . s:fg_tabline_inactive_fg . s:bg_tabline_inactive_bg . s:ft_none
  exec 'hi TabLineFill' . s:fg_tabline_bg . s:bg_tabline_bg . s:ft_none
  exec 'hi TabLineSel' . s:fg_tabline_active_fg . s:bg_tabline_active_bg . s:ft_none

  exec 'hi BufTabLineCurrent' . s:fg_buftabline_current_fg . s:bg_buftabline_current_bg . s:ft_none
  exec 'hi BufTabLineActive' . s:fg_buftabline_active_fg . s:bg_buftabline_active_bg . s:ft_none
  exec 'hi BufTabLineHidden' . s:fg_buftabline_inactive_fg . s:bg_buftabline_inactive_bg . s:ft_none
  exec 'hi BufTabLineFill'  . s:bg_buftabline_bg . s:ft_none

  " Standard Group Highlighting:
  exec 'hi Comment' . s:fg_comment

  exec 'hi Constant' . s:fg_orange
  exec 'hi String' . s:fg_olive
  exec 'hi Character' . s:fg_olive
  exec 'hi Number' . s:fg_orange
  exec 'hi Boolean' . s:fg_green . s:ft_bold
  exec 'hi Float' . s:fg_orange

  exec 'hi Identifier' . s:fg_navy
  exec 'hi Function' . s:fg_foreground

  exec 'hi Statement' . s:fg_pink . s:ft_none
  exec 'hi Conditional' . s:fg_purple . s:ft_bold
  exec 'hi Repeat' . s:fg_purple . s:ft_bold
  exec 'hi Label' . s:fg_blue
  exec 'hi Operator' . s:fg_aqua . s:ft_none
  exec 'hi Keyword' . s:fg_blue
  exec 'hi Exception' . s:fg_red

  exec 'hi PreProc' . s:fg_blue
  exec 'hi Include' . s:fg_red
  exec 'hi Define' . s:fg_blue
  exec 'hi Macro' . s:fg_blue
  exec 'hi PreCondit' . s:fg_aqua

  exec 'hi Type' . s:fg_pink . s:ft_bold
  exec 'hi StorageClass' . s:fg_navy . s:ft_bold
  exec 'hi Structure' . s:fg_blue . s:ft_bold
  exec 'hi Typedef' . s:fg_pink . s:ft_bold

  exec 'hi Special' . s:fg_foreground
  exec 'hi SpecialChar' . s:fg_foreground
  exec 'hi Tag' . s:fg_green
  exec 'hi Delimiter' . s:fg_aqua
  exec 'hi SpecialComment' . s:fg_comment . s:ft_bold
  exec 'hi Debug' . s:fg_orange

  exec 'hi Error' . s:fg_error_fg . s:bg_error_bg
  exec 'hi Todo' . s:fg_todo_fg . s:bg_todo_bg . s:ft_bold

  exec 'hi Title' . s:fg_comment
  exec 'hi Global' . s:fg_blue


  " Extension {{{
  " VimL Highlighting
  exec 'hi vimCommand' . s:fg_pink
  exec 'hi vimVar' . s:fg_navy
  exec 'hi vimFuncKey' . s:fg_pink
  exec 'hi vimFunction' . s:fg_blue . s:ft_bold
  exec 'hi vimNotFunc' . s:fg_pink
  exec 'hi vimMap' . s:fg_red
  exec 'hi vimAutoEvent' . s:fg_aqua . s:ft_bold
  exec 'hi vimMapModKey' . s:fg_aqua
  exec 'hi vimFuncName' . s:fg_purple
  exec 'hi vimIsCommand' . s:fg_foreground
  exec 'hi vimFuncVar' . s:fg_aqua
  exec 'hi vimLet' . s:fg_red
  exec 'hi vimContinue' . s:fg_aqua
  exec 'hi vimMapRhsExtend' . s:fg_foreground
  exec 'hi vimCommentTitle' . s:fg_comment . s:ft_bold
  exec 'hi vimBracket' . s:fg_aqua
  exec 'hi vimParenSep' . s:fg_aqua
  exec 'hi vimNotation' . s:fg_aqua
  exec 'hi vimOper' . s:fg_foreground
  exec 'hi vimOperParen' . s:fg_foreground
  exec 'hi vimSynType' . s:fg_purple
  exec 'hi vimSynReg' . s:fg_pink . s:ft_none
  exec 'hi vimSynKeyRegion' . s:fg_green
  exec 'hi vimSynRegOpt' . s:fg_blue
  exec 'hi vimSynMtchOpt' . s:fg_blue
  exec 'hi vimSynContains' . s:fg_pink
  exec 'hi vimGroupName' . s:fg_foreground
  exec 'hi vimGroupList' . s:fg_foreground
  exec 'hi vimHiGroup' . s:fg_foreground
  exec 'hi vimGroup' . s:fg_navy . s:ft_bold
  exec 'hi vimOnlyOption' . s:fg_blue

  " Makefile Highlighting
  exec 'hi makeIdent' . s:fg_blue
  exec 'hi makeSpecTarget' . s:fg_olive
  exec 'hi makeTarget' . s:fg_red
  exec 'hi makeStatement' . s:fg_aqua . s:ft_bold
  exec 'hi makeCommands' . s:fg_foreground
  exec 'hi makeSpecial' . s:fg_orange . s:ft_bold

  " CMake Highlighting
  exec 'hi cmakeStatement' . s:fg_pink
  exec 'hi cmakeArguments' . s:fg_foreground
  exec 'hi cmakeVariableValue' . s:fg_blue
  exec 'hi cmakeOperators' . s:fg_red

  " C Highlighting
  exec 'hi cType' . s:fg_pink . s:ft_bold
  exec 'hi cFormat' . s:fg_olive
  exec 'hi cStorageClass' . s:fg_navy . s:ft_bold

  exec 'hi cBoolean' . s:fg_green
  exec 'hi cCharacter' . s:fg_olive
  exec 'hi cConstant' . s:fg_green . s:ft_bold
  exec 'hi cConditional' . s:fg_purple . s:ft_bold
  exec 'hi cSpecial' . s:fg_olive . s:ft_bold
  exec 'hi cDefine' . s:fg_blue
  exec 'hi cNumber' . s:fg_orange
  exec 'hi cPreCondit' . s:fg_aqua
  exec 'hi cRepeat' . s:fg_purple . s:ft_bold
  exec 'hi cLabel' . s:fg_aqua
  " exec 'hi cAnsiFunction' . s:fg_aqua . s:ft_bold
  " exec 'hi cAnsiName' . s:fg_pink
  exec 'hi cDelimiter' . s:fg_blue
  " exec 'hi cBraces' . s:fg_foreground
  " exec 'hi cIdentifier' . s:fg_blue . s:bg_pink
  " exec 'hi cSemiColon'  . s:bg_blue
  exec 'hi cOperator' . s:fg_aqua
  " exec 'hi cStatement' . s:fg_pink
  " exec 'hi cTodo' . s:fg_comment . s:ft_bold
  " exec 'hi cStructure' . s:fg_blue . s:ft_bold
  exec 'hi cCustomParen' . s:fg_foreground
  " exec 'hi cCustomFunc' . s:fg_foreground
  " exec 'hi cUserFunction' . s:fg_blue . s:ft_bold
  exec 'hi cOctalZero' . s:fg_purple . s:ft_bold
  if s:Language_Options('c.highlight_builtins') == 1
    exec 'hi cFunction' . s:fg_blue
  else
    exec 'hi cFunction' . s:fg_foreground
  endif

  " CPP highlighting
  exec 'hi cppBoolean' . s:fg_navy
  exec 'hi cppSTLnamespace' . s:fg_purple
  exec 'hi cppSTLexception' . s:fg_pink
  exec 'hi cppSTLfunctional' . s:fg_foreground . s:ft_bold
  exec 'hi cppSTLiterator' . s:fg_foreground . s:ft_bold
  exec 'hi cppExceptions' . s:fg_red
  exec 'hi cppStatement' . s:fg_blue
  exec 'hi cppStorageClass' . s:fg_navy . s:ft_bold
  exec 'hi cppAccess' . s:fg_blue
  if s:Language_Options('cpp.highlight_standard_library') == 1
    exec 'hi cppSTLconstant' . s:fg_green . s:ft_bold
    exec 'hi cppSTLtype' . s:fg_pink . s:ft_bold
    exec 'hi cppSTLfunction' . s:fg_blue
    exec 'hi cppSTLios' . s:fg_olive . s:ft_bold
  else
    exec 'hi cppSTLconstant' . s:fg_foreground
    exec 'hi cppSTLtype' . s:fg_foreground
    exec 'hi cppSTLfunction' . s:fg_foreground
    exec 'hi cppSTLios' . s:fg_foreground
  endif
  " exec 'hi cppSTL' . s:fg_blue


  " Lex highlighting
  exec 'hi lexCFunctions' . s:fg_foreground
  exec 'hi lexAbbrv' . s:fg_purple
  exec 'hi lexAbbrvRegExp' . s:fg_aqua
  exec 'hi lexAbbrvComment' . s:fg_comment
  exec 'hi lexBrace' . s:fg_navy
  exec 'hi lexPat' . s:fg_aqua
  exec 'hi lexPatComment' . s:fg_comment
  exec 'hi lexPatTag' . s:fg_orange
  " exec 'hi lexPatBlock' . s:fg_foreground . s:ft_bold
  exec 'hi lexSlashQuote' . s:fg_foreground
  exec 'hi lexSep' . s:fg_foreground
  exec 'hi lexStartState' . s:fg_orange
  exec 'hi lexPatTagZone' . s:fg_olive . s:ft_bold
  exec 'hi lexMorePat' . s:fg_olive . s:ft_bold
  exec 'hi lexOptions' . s:fg_olive . s:ft_bold
  exec 'hi lexPatString' . s:fg_olive

  " Yacc highlighting
  exec 'hi yaccNonterminal' . s:fg_navy
  exec 'hi yaccDelim' . s:fg_orange
  exec 'hi yaccInitKey' . s:fg_aqua
  exec 'hi yaccInit' . s:fg_navy
  exec 'hi yaccKey' . s:fg_purple
  exec 'hi yaccVar' . s:fg_aqua

  " NASM highlighting
  exec 'hi nasmStdInstruction' . s:fg_navy
  exec 'hi nasmGen08Register' . s:fg_aqua
  exec 'hi nasmGen16Register' . s:fg_aqua
  exec 'hi nasmGen32Register' . s:fg_aqua
  exec 'hi nasmGen64Register' . s:fg_aqua
  exec 'hi nasmHexNumber' . s:fg_purple
  exec 'hi nasmStorage' . s:fg_aqua . s:ft_bold
  exec 'hi nasmLabel' . s:fg_pink
  exec 'hi nasmDirective' . s:fg_blue . s:ft_bold
  exec 'hi nasmLocalLabel' . s:fg_orange

  " GAS highlighting
  exec 'hi gasSymbol' . s:fg_pink
  exec 'hi gasDirective' . s:fg_blue . s:ft_bold
  exec 'hi gasOpcode_386_Base' . s:fg_navy
  exec 'hi gasDecimalNumber' . s:fg_purple
  exec 'hi gasSymbolRef' . s:fg_pink
  exec 'hi gasRegisterX86' . s:fg_blue
  exec 'hi gasOpcode_P6_Base' . s:fg_navy
  exec 'hi gasDirectiveStore' . s:fg_foreground . s:ft_bold

  " MIPS highlighting
  exec 'hi mipsInstruction' . s:fg_pink
  exec 'hi mipsRegister' . s:fg_navy
  exec 'hi mipsLabel' . s:fg_aqua . s:ft_bold
  exec 'hi mipsDirective' . s:fg_purple . s:ft_bold

  " Shell/Bash highlighting
  exec 'hi bashStatement' . s:fg_foreground . s:ft_bold
  exec 'hi shDerefVar' . s:fg_aqua . s:ft_bold
  exec 'hi shDerefSimple' . s:fg_aqua
  exec 'hi shFunction' . s:fg_orange . s:ft_bold
  exec 'hi shStatement' . s:fg_foreground
  exec 'hi shLoop' . s:fg_purple . s:ft_bold
  exec 'hi shQuote' . s:fg_olive
  exec 'hi shCaseEsac' . s:fg_aqua . s:ft_bold
  exec 'hi shSnglCase' . s:fg_purple . s:ft_none
  exec 'hi shFunctionOne' . s:fg_navy
  exec 'hi shCase' . s:fg_navy
  exec 'hi shSetList' . s:fg_navy
  " @see Dockerfile Highlighting section for more sh*

  " HTML Highlighting
  exec 'hi htmlTitle' . s:fg_green . s:ft_bold
  exec 'hi htmlH1' . s:fg_green . s:ft_bold
  exec 'hi htmlH2' . s:fg_aqua . s:ft_bold
  exec 'hi htmlH3' . s:fg_purple . s:ft_bold
  exec 'hi htmlH4' . s:fg_orange . s:ft_bold
  exec 'hi htmlTag' . s:fg_comment
  exec 'hi htmlTagName' . s:fg_wine
  exec 'hi htmlArg' . s:fg_pink
  exec 'hi htmlEndTag' . s:fg_comment
  exec 'hi htmlString' . s:fg_blue
  exec 'hi htmlScriptTag' . s:fg_comment
  exec 'hi htmlBold' . s:fg_foreground . s:ft_bold
  exec 'hi htmlItalic' . s:fg_comment . s:ft_bold
  exec 'hi htmlBoldItalic' . s:fg_navy . s:ft_bold
  " exec 'hi htmlLink' . s:fg_blue . s:ft_bold
  exec 'hi htmlTagN' . s:fg_wine . s:ft_bold
  exec 'hi htmlSpecialTagName' . s:fg_wine
  exec 'hi htmlComment' . s:fg_comment
  exec 'hi htmlCommentPart' . s:fg_comment

  " CSS Highlighting
  exec 'hi cssIdentifier' . s:fg_pink
  exec 'hi cssPositioningProp' . s:fg_foreground
  exec 'hi cssNoise' . s:fg_foreground
  exec 'hi cssBoxProp' . s:fg_foreground
  exec 'hi cssTableAttr' . s:fg_purple
  exec 'hi cssPositioningAttr' . s:fg_navy
  exec 'hi cssValueLength' . s:fg_orange
  exec 'hi cssFunctionName' . s:fg_blue
  exec 'hi cssUnitDecorators' . s:fg_aqua
  exec 'hi cssColor' . s:fg_blue . s:ft_bold
  exec 'hi cssBraces' . s:fg_pink
  exec 'hi cssBackgroundProp' . s:fg_foreground
  exec 'hi cssTextProp' . s:fg_foreground
  exec 'hi cssDimensionProp' . s:fg_foreground
  exec 'hi cssClassName' . s:fg_pink

  " Markdown Highlighting
  exec 'hi markdownHeadingRule' . s:fg_pink . s:ft_bold
  exec 'hi markdownH1' . s:fg_pink . s:ft_bold
  exec 'hi markdownH2' . s:fg_orange . s:ft_bold
  exec 'hi markdownBlockquote' . s:fg_pink
  exec 'hi markdownCodeBlock' . s:fg_olive
  exec 'hi markdownCode' . s:fg_olive
  exec 'hi markdownLink' . s:fg_blue . s:ft_bold
  exec 'hi markdownUrl' . s:fg_blue
  exec 'hi markdownLinkText' . s:fg_pink
  exec 'hi markdownLinkTextDelimiter' . s:fg_purple
  exec 'hi markdownLinkDelimiter' . s:fg_purple
  exec 'hi markdownCodeDelimiter' . s:fg_blue

  exec 'hi mkdCode' . s:fg_olive
  exec 'hi mkdLink' . s:fg_blue . s:ft_bold
  exec 'hi mkdURL' . s:fg_comment
  exec 'hi mkdString' . s:fg_foreground
  exec 'hi mkdBlockQuote' . s:fg_foreground . s:bg_popupmenu_bg
  exec 'hi mkdLinkTitle' . s:fg_pink
  exec 'hi mkdDelimiter' . s:fg_aqua
  exec 'hi mkdRule' . s:fg_pink

  " reStructuredText Highlighting
  exec 'hi rstSections' . s:fg_pink . s:ft_bold
  exec 'hi rstDelimiter' . s:fg_pink . s:ft_bold
  exec 'hi rstExplicitMarkup' . s:fg_pink . s:ft_bold
  exec 'hi rstDirective' . s:fg_blue
  exec 'hi rstHyperlinkTarget' . s:fg_green
  exec 'hi rstExDirective' . s:fg_foreground
  exec 'hi rstInlineLiteral' . s:fg_olive
  exec 'hi rstInterpretedTextOrHyperlinkReference' . s:fg_blue

  " Python Highlighting
  exec 'hi pythonImport' . s:fg_pink . s:ft_bold
  exec 'hi pythonExceptions' . s:fg_red
  exec 'hi pythonException' . s:fg_purple . s:ft_bold
  exec 'hi pythonInclude' . s:fg_red
  exec 'hi pythonStatement' . s:fg_pink
  exec 'hi pythonConditional' . s:fg_purple . s:ft_bold
  exec 'hi pythonRepeat' . s:fg_purple . s:ft_bold
  exec 'hi pythonFunction' . s:fg_aqua . s:ft_bold
  exec 'hi pythonPreCondit' . s:fg_purple
  exec 'hi pythonExClass' . s:fg_orange
  exec 'hi pythonOperator' . s:fg_purple . s:ft_bold
  exec 'hi pythonBuiltin' . s:fg_foreground
  exec 'hi pythonDecorator' . s:fg_orange

  exec 'hi pythonString' . s:fg_olive
  exec 'hi pythonEscape' . s:fg_olive . s:ft_bold
  exec 'hi pythonStrFormatting' . s:fg_olive . s:ft_bold

  exec 'hi pythonBoolean' . s:fg_green . s:ft_bold
  exec 'hi pythonExClass' . s:fg_red
  exec 'hi pythonBytesEscape' . s:fg_olive . s:ft_bold
  exec 'hi pythonDottedName' . s:fg_purple
  exec 'hi pythonStrFormat' . s:fg_foreground

  if s:Language_Options('python.highlight_builtins') == 1
    exec 'hi pythonBuiltinFunc' . s:fg_blue
    exec 'hi pythonBuiltinObj' . s:fg_red
  else
    exec 'hi pythonBuiltinFunc' . s:fg_foreground
    exec 'hi pythonBuiltinObj' . s:fg_foreground
  endif

  " Java Highlighting
  exec 'hi javaExternal' . s:fg_pink
  exec 'hi javaAnnotation' . s:fg_orange
  exec 'hi javaTypedef' . s:fg_aqua
  exec 'hi javaClassDecl' . s:fg_aqua . s:ft_bold
  exec 'hi javaScopeDecl' . s:fg_blue . s:ft_bold
  exec 'hi javaStorageClass' . s:fg_navy . s:ft_bold
  exec 'hi javaBoolean' . s:fg_green . s:ft_bold
  exec 'hi javaConstant' . s:fg_blue
  exec 'hi javaCommentTitle' . s:fg_wine
  exec 'hi javaDocTags' . s:fg_aqua
  exec 'hi javaDocComment' . s:fg_comment
  exec 'hi javaDocParam' . s:fg_foreground
  exec 'hi javaStatement' . s:fg_pink

  " JavaScript Highlighting
  exec 'hi javaScriptBraces' . s:fg_blue
  exec 'hi javaScriptParens' . s:fg_blue
  exec 'hi javaScriptIdentifier' . s:fg_pink
  exec 'hi javaScriptFunction' . s:fg_blue . s:ft_bold
  exec 'hi javaScriptConditional' . s:fg_purple . s:ft_bold
  exec 'hi javaScriptRepeat' . s:fg_purple . s:ft_bold
  exec 'hi javaScriptBoolean' . s:fg_green . s:ft_bold
  exec 'hi javaScriptNumber' . s:fg_orange
  exec 'hi javaScriptMember' . s:fg_navy
  exec 'hi javaScriptReserved' . s:fg_navy
  exec 'hi javascriptNull' . s:fg_comment . s:ft_bold
  exec 'hi javascriptGlobal' . s:fg_foreground
  exec 'hi javascriptStatement' . s:fg_pink
  exec 'hi javaScriptMessage' . s:fg_foreground
  exec 'hi javaScriptMember' . s:fg_foreground

  " @target https://github.com/pangloss/vim-javascript
  exec 'hi jsFuncParens' . s:fg_blue
  exec 'hi jsFuncBraces' . s:fg_blue
  exec 'hi jsParens' . s:fg_blue
  exec 'hi jsBraces' . s:fg_blue
  exec 'hi jsNoise' . s:fg_blue

  " Json Highlighting
  " @target https://github.com/elzr/vim-json
  exec 'hi jsonKeyword' . s:fg_blue
  exec 'hi jsonString' . s:fg_olive
  exec 'hi jsonQuote' . s:fg_comment
  exec 'hi jsonNoise' . s:fg_foreground
  exec 'hi jsonKeywordMatch' . s:fg_foreground
  exec 'hi jsonBraces' . s:fg_foreground
  exec 'hi jsonNumber' . s:fg_orange
  exec 'hi jsonNull' . s:fg_purple . s:ft_bold
  exec 'hi jsonBoolean' . s:fg_green . s:ft_bold
  exec 'hi jsonCommentError' . s:fg_pink . s:bg_background 

  " Go Highlighting
  exec 'hi goDirective' . s:fg_red
  exec 'hi goDeclaration' . s:fg_blue . s:ft_bold
  exec 'hi goStatement' . s:fg_pink
  exec 'hi goConditional' . s:fg_purple . s:ft_bold
  exec 'hi goConstants' . s:fg_orange
  exec 'hi goFunction' . s:fg_orange
  " exec 'hi goTodo' . s:fg_comment . s:ft_bold
  exec 'hi goDeclType' . s:fg_blue
  exec 'hi goBuiltins' . s:fg_purple

  " Systemtap Highlighting
  " exec 'hi stapBlock' . s:fg_comment . s:ft_none
  exec 'hi stapComment' . s:fg_comment . s:ft_none
  exec 'hi stapProbe' . s:fg_aqua . s:ft_bold
  exec 'hi stapStat' . s:fg_navy . s:ft_bold
  exec 'hi stapFunc' . s:fg_foreground
  exec 'hi stapString' . s:fg_olive
  exec 'hi stapTarget' . s:fg_navy
  exec 'hi stapStatement' . s:fg_pink
  exec 'hi stapType' . s:fg_pink . s:ft_bold
  exec 'hi stapSharpBang' . s:fg_comment
  exec 'hi stapDeclaration' . s:fg_pink
  exec 'hi stapCMacro' . s:fg_blue

  " DTrace Highlighting
  exec 'hi dtraceProbe' . s:fg_blue
  exec 'hi dtracePredicate' . s:fg_purple . s:ft_bold
  exec 'hi dtraceComment' . s:fg_comment
  exec 'hi dtraceFunction' . s:fg_foreground
  exec 'hi dtraceAggregatingFunction' . s:fg_blue . s:ft_bold
  exec 'hi dtraceStatement' . s:fg_navy . s:ft_bold
  exec 'hi dtraceIdentifier' . s:fg_pink
  exec 'hi dtraceOption' . s:fg_pink
  exec 'hi dtraceConstant' . s:fg_orange
  exec 'hi dtraceType' . s:fg_pink . s:ft_bold

  " PlantUML Highlighting
  exec 'hi plantumlPreProc' . s:fg_orange . s:ft_bold
  exec 'hi plantumlDirectedOrVerticalArrowRL' . s:fg_pink
  exec 'hi plantumlDirectedOrVerticalArrowLR' . s:fg_pink
  exec 'hi plantumlString' . s:fg_olive
  exec 'hi plantumlActivityThing' . s:fg_purple
  exec 'hi plantumlText' . s:fg_navy
  exec 'hi plantumlClassPublic' . s:fg_olive . s:ft_bold
  exec 'hi plantumlClassPrivate' . s:fg_red
  exec 'hi plantumlColonLine' . s:fg_orange
  exec 'hi plantumlClass' . s:fg_navy
  exec 'hi plantumlHorizontalArrow' . s:fg_pink
  exec 'hi plantumlTypeKeyword' . s:fg_blue . s:ft_bold
  exec 'hi plantumlKeyword' . s:fg_pink . s:ft_bold

  exec 'hi plantumlType' . s:fg_blue . s:ft_bold
  exec 'hi plantumlBlock' . s:fg_pink . s:ft_bold
  exec 'hi plantumlPreposition' . s:fg_orange
  exec 'hi plantumlLayout' . s:fg_blue . s:ft_bold
  exec 'hi plantumlNote' . s:fg_orange
  exec 'hi plantumlLifecycle' . s:fg_aqua
  exec 'hi plantumlParticipant' . s:fg_foreground . s:ft_bold


  " Haskell Highlighting
  exec 'hi haskellType' . s:fg_aqua . s:ft_bold
  exec 'hi haskellIdentifier' . s:fg_orange . s:ft_bold
  exec 'hi haskellOperators' . s:fg_pink
  exec 'hi haskellWhere' . s:fg_foreground . s:ft_bold
  exec 'hi haskellDelimiter' . s:fg_aqua
  exec 'hi haskellImportKeywords' . s:fg_pink
  exec 'hi haskellStatement' . s:fg_purple . s:ft_bold


  " SQL/MySQL Highlighting
  exec 'hi sqlStatement' . s:fg_pink . s:ft_bold
  exec 'hi sqlType' . s:fg_blue . s:ft_bold
  exec 'hi sqlKeyword' . s:fg_pink
  exec 'hi sqlOperator' . s:fg_aqua
  exec 'hi sqlSpecial' . s:fg_green . s:ft_bold

  exec 'hi mysqlVariable' . s:fg_olive . s:ft_bold
  exec 'hi mysqlType' . s:fg_blue . s:ft_bold
  exec 'hi mysqlKeyword' . s:fg_pink
  exec 'hi mysqlOperator' . s:fg_aqua
  exec 'hi mysqlSpecial' . s:fg_green . s:ft_bold


  " Octave/MATLAB Highlighting
  exec 'hi octaveVariable' . s:fg_foreground
  exec 'hi octaveDelimiter' . s:fg_pink
  exec 'hi octaveQueryVar' . s:fg_foreground
  exec 'hi octaveSemicolon' . s:fg_purple
  exec 'hi octaveFunction' . s:fg_navy
  exec 'hi octaveSetVar' . s:fg_blue
  exec 'hi octaveUserVar' . s:fg_foreground
  exec 'hi octaveArithmeticOperator' . s:fg_aqua
  exec 'hi octaveBeginKeyword' . s:fg_purple . s:ft_bold
  exec 'hi octaveElseKeyword' . s:fg_purple . s:ft_bold
  exec 'hi octaveEndKeyword' . s:fg_purple . s:ft_bold
  exec 'hi octaveStatement' . s:fg_pink

  " Ruby Highlighting
  exec 'hi rubyModule' . s:fg_navy . s:ft_bold
  exec 'hi rubyClass' . s:fg_pink . s:ft_bold
  exec 'hi rubyPseudoVariable' . s:fg_comment . s:ft_bold
  exec 'hi rubyKeyword' . s:fg_pink
  exec 'hi rubyInstanceVariable' . s:fg_purple
  exec 'hi rubyFunction' . s:fg_foreground . s:ft_bold
  exec 'hi rubyDefine' . s:fg_pink
  exec 'hi rubySymbol' . s:fg_aqua
  exec 'hi rubyConstant' . s:fg_blue
  exec 'hi rubyAccess' . s:fg_navy
  exec 'hi rubyAttribute' . s:fg_green
  exec 'hi rubyInclude' . s:fg_red
  exec 'hi rubyLocalVariableOrMethod' . s:fg_orange
  exec 'hi rubyCurlyBlock' . s:fg_foreground
  exec 'hi rubyCurlyBlockDelimiter' . s:fg_aqua
  exec 'hi rubyArrayDelimiter' . s:fg_aqua
  exec 'hi rubyStringDelimiter' . s:fg_olive
  exec 'hi rubyInterpolationDelimiter' . s:fg_orange
  exec 'hi rubyConditional' . s:fg_purple . s:ft_bold
  exec 'hi rubyRepeat' . s:fg_purple . s:ft_bold
  exec 'hi rubyControl' . s:fg_purple . s:ft_bold
  exec 'hi rubyException' . s:fg_purple . s:ft_bold
  exec 'hi rubyExceptional' . s:fg_purple . s:ft_bold
  exec 'hi rubyBoolean' . s:fg_green . s:ft_bold

  " Fortran Highlighting
  exec 'hi fortranUnitHeader' . s:fg_foreground . s:ft_bold
  exec 'hi fortranType' . s:fg_pink . s:ft_bold
  exec 'hi fortranStructure' . s:fg_blue . s:ft_bold
  exec 'hi fortranStorageClass' . s:fg_navy . s:ft_bold
  exec 'hi fortranStorageClassR' . s:fg_navy . s:ft_bold
  exec 'hi fortranKeyword' . s:fg_pink
  exec 'hi fortranReadWrite' . s:fg_blue
  exec 'hi fortranIO' . s:fg_navy

  " R Highlighting
  exec 'hi rType' . s:fg_blue
  exec 'hi rArrow' . s:fg_pink
  exec 'hi rDollar' . s:fg_blue

  " XXD Highlighting
  exec 'hi xxdAddress' . s:fg_navy
  exec 'hi xxdSep' . s:fg_pink
  exec 'hi xxdAscii' . s:fg_pink
  exec 'hi xxdDot' . s:fg_aqua

  " PHP Highlighting
  exec 'hi phpIdentifier' . s:fg_foreground
  exec 'hi phpVarSelector' . s:fg_pink
  exec 'hi phpKeyword' . s:fg_blue
  exec 'hi phpRepeat' . s:fg_purple . s:ft_bold
  exec 'hi phpConditional' . s:fg_purple . s:ft_bold
  exec 'hi phpStatement' . s:fg_pink
  exec 'hi phpAssignByRef' . s:fg_aqua . s:ft_bold
  exec 'hi phpSpecialFunction' . s:fg_blue
  exec 'hi phpFunctions' . s:fg_blue
  exec 'hi phpComparison' . s:fg_aqua
  exec 'hi phpBackslashSequences' . s:fg_olive . s:ft_bold
  exec 'hi phpMemberSelector' . s:fg_blue
  exec 'hi phpStorageClass' . s:fg_purple . s:ft_bold
  exec 'hi phpDefine' . s:fg_navy
  exec 'hi phpIntVar' . s:fg_navy . s:ft_bold

  " Perl Highlighting
  exec 'hi perlFiledescRead' . s:fg_green
  exec 'hi perlMatchStartEnd' . s:fg_pink
  exec 'hi perlStatementFlow' . s:fg_pink
  exec 'hi perlStatementStorage' . s:fg_pink
  exec 'hi perlFunction' . s:fg_pink . s:ft_bold
  exec 'hi perlMethod' . s:fg_foreground
  exec 'hi perlStatementFiledesc' . s:fg_orange
  exec 'hi perlVarPlain' . s:fg_navy
  exec 'hi perlSharpBang' . s:fg_comment
  exec 'hi perlStatementInclude' . s:fg_aqua . s:ft_bold
  exec 'hi perlStatementScalar' . s:fg_purple
  exec 'hi perlSubName' . s:fg_aqua . s:ft_bold
  exec 'hi perlSpecialString' . s:fg_olive . s:ft_bold

  " Pascal Highlighting
  exec 'hi pascalType' . s:fg_pink . s:ft_bold
  exec 'hi pascalStatement' . s:fg_blue . s:ft_bold
  exec 'hi pascalPredefined' . s:fg_pink
  exec 'hi pascalFunction' . s:fg_foreground
  exec 'hi pascalStruct' . s:fg_navy . s:ft_bold
  exec 'hi pascalOperator' . s:fg_aqua . s:ft_bold
  exec 'hi pascalPreProc' . s:fg_green
  exec 'hi pascalAcces' . s:fg_navy . s:ft_bold

  " Lua Highlighting
  exec 'hi luaFunc' . s:fg_foreground
  exec 'hi luaIn' . s:fg_blue . s:ft_bold
  exec 'hi luaFunction' . s:fg_pink
  exec 'hi luaStatement' . s:fg_blue
  exec 'hi luaRepeat' . s:fg_blue . s:ft_bold
  exec 'hi luaCondStart' . s:fg_purple . s:ft_bold
  exec 'hi luaTable' . s:fg_aqua . s:ft_bold
  exec 'hi luaConstant' . s:fg_green . s:ft_bold
  exec 'hi luaElse' . s:fg_purple . s:ft_bold
  exec 'hi luaCondElseif' . s:fg_purple . s:ft_bold
  exec 'hi luaCond' . s:fg_purple . s:ft_bold
  exec 'hi luaCondEnd' . s:fg_purple

  " Clojure highlighting:
  exec 'hi clojureConstant' . s:fg_blue
  exec 'hi clojureBoolean' . s:fg_orange
  exec 'hi clojureCharacter' . s:fg_olive
  exec 'hi clojureKeyword' . s:fg_pink
  exec 'hi clojureNumber' . s:fg_orange
  exec 'hi clojureString' . s:fg_olive
  exec 'hi clojureRegexp' . s:fg_purple
  exec 'hi clojureRegexpEscape' . s:fg_pink
  exec 'hi clojureParen' . s:fg_aqua
  exec 'hi clojureVariable' . s:fg_olive
  exec 'hi clojureCond' . s:fg_blue
  exec 'hi clojureDefine' . s:fg_blue . s:ft_bold
  exec 'hi clojureException' . s:fg_red
  exec 'hi clojureFunc' . s:fg_navy
  exec 'hi clojureMacro' . s:fg_blue
  exec 'hi clojureRepeat' . s:fg_blue
  exec 'hi clojureSpecial' . s:fg_blue . s:ft_bold
  exec 'hi clojureQuote' . s:fg_blue
  exec 'hi clojureUnquote' . s:fg_blue
  exec 'hi clojureMeta' . s:fg_blue
  exec 'hi clojureDeref' . s:fg_blue
  exec 'hi clojureAnonArg' . s:fg_blue
  exec 'hi clojureRepeat' . s:fg_blue
  exec 'hi clojureDispatch' . s:fg_aqua

  " Dockerfile Highlighting
  " @target https://github.com/docker/docker/tree/master/contrib/syntax/vim
  exec 'hi dockerfileKeyword' . s:fg_blue
  exec 'hi shDerefVar' . s:fg_purple . s:ft_bold
  exec 'hi shOperator' . s:fg_aqua
  exec 'hi shOption' . s:fg_navy
  exec 'hi shLine' . s:fg_foreground
  exec 'hi shWrapLineOperator' . s:fg_pink

  " NGINX Highlighting
  " @target https://github.com/evanmiller/nginx-vim-syntax
  exec 'hi ngxDirectiveBlock' . s:fg_pink . s:ft_bold
  exec 'hi ngxDirective' . s:fg_blue . s:ft_none
  exec 'hi ngxDirectiveImportant' . s:fg_blue . s:ft_bold
  exec 'hi ngxString' . s:fg_olive
  exec 'hi ngxVariableString' . s:fg_purple
  exec 'hi ngxVariable' . s:fg_purple . s:ft_none

  " Yaml Highlighting
  exec 'hi yamlBlockMappingKey' . s:fg_blue
  exec 'hi yamlKeyValueDelimiter' . s:fg_pink
  exec 'hi yamlBlockCollectionItemStart' . s:fg_pink

  " Qt QML Highlighting
  exec 'hi qmlObjectLiteralType' . s:fg_pink
  exec 'hi qmlReserved' . s:fg_purple
  exec 'hi qmlBindingProperty' . s:fg_navy
  exec 'hi qmlType' . s:fg_navy

  " Dosini Highlighting
  exec 'hi dosiniHeader' . s:fg_pink
  exec 'hi dosiniLabel' . s:fg_blue

  " Mail highlighting
  exec 'hi mailHeaderKey' . s:fg_blue
  exec 'hi mailHeaderEmail' . s:fg_purple
  exec 'hi mailSubject' . s:fg_pink
  exec 'hi mailHeader' . s:fg_comment
  exec 'hi mailURL' . s:fg_aqua
  exec 'hi mailEmail' . s:fg_purple
  exec 'hi mailQuoted1' . s:fg_olive
  exec 'hi mailQuoted2' . s:fg_navy

  " XML Highlighting
  exec 'hi xmlProcessingDelim' . s:fg_pink
  exec 'hi xmlString' . s:fg_olive
  exec 'hi xmlEqual' . s:fg_orange
  exec 'hi xmlAttrib' . s:fg_navy
  exec 'hi xmlAttribPunct' . s:fg_pink
  exec 'hi xmlTag' . s:fg_blue
  exec 'hi xmlTagName' . s:fg_blue
  exec 'hi xmlEndTag' . s:fg_blue
  exec 'hi xmlNamespace' . s:fg_orange

  " Exlixir Highlighting
  " @target https://github.com/elixir-lang/vim-elixir
  exec 'hi elixirAlias' . s:fg_blue . s:ft_bold
  exec 'hi elixirAtom' . s:fg_navy
  exec 'hi elixirVariable' . s:fg_navy
  exec 'hi elixirUnusedVariable' . s:fg_foreground . s:ft_bold
  exec 'hi elixirInclude' . s:fg_purple
  exec 'hi elixirStringDelimiter' . s:fg_olive
  exec 'hi elixirKeyword' . s:fg_purple . s:ft_bold
  exec 'hi elixirFunctionDeclaration' . s:fg_aqua . s:ft_bold
  exec 'hi elixirBlockDefinition' . s:fg_pink
  exec 'hi elixirDefine' . s:fg_pink
  exec 'hi elixirStructDefine' . s:fg_pink
  exec 'hi elixirPrivateDefine' . s:fg_pink
  exec 'hi elixirModuleDefine' . s:fg_pink
  exec 'hi elixirProtocolDefine' . s:fg_pink
  exec 'hi elixirImplDefine' . s:fg_pink
  exec 'hi elixirModuleDeclaration' . s:fg_aqua . s:ft_bold
  exec 'hi elixirDocString' . s:fg_olive
  exec 'hi elixirDocTest' . s:fg_green . s:ft_bold

  " Erlang Highlighting
  exec 'hi erlangBIF' . s:fg_purple . s:ft_bold
  exec 'hi erlangBracket' . s:fg_pink
  exec 'hi erlangLocalFuncCall' . s:fg_foreground
  exec 'hi erlangVariable' . s:fg_foreground
  exec 'hi erlangAtom' . s:fg_navy
  exec 'hi erlangAttribute' . s:fg_blue . s:ft_bold
  exec 'hi erlangRecordDef' . s:fg_blue . s:ft_bold
  exec 'hi erlangRecord' . s:fg_blue
  exec 'hi erlangRightArrow' . s:fg_blue . s:ft_bold
  exec 'hi erlangStringModifier' . s:fg_olive . s:ft_bold
  exec 'hi erlangInclude' . s:fg_blue . s:ft_bold
  exec 'hi erlangKeyword' . s:fg_pink
  exec 'hi erlangGlobalFuncCall' . s:fg_foreground

  " Cucumber Highlighting
  exec 'hi cucumberFeature' . s:fg_blue . s:ft_bold
  exec 'hi cucumberBackground' . s:fg_pink . s:ft_bold
  exec 'hi cucumberScenario' . s:fg_pink . s:ft_bold
  exec 'hi cucumberGiven' . s:fg_orange
  exec 'hi cucumberGivenAnd' . s:fg_blue
  exec 'hi cucumberThen' . s:fg_orange
  exec 'hi cucumberThenAnd' . s:fg_blue
  exec 'hi cucumberWhen' . s:fg_purple . s:ft_bold
  exec 'hi cucumberScenarioOutline' . s:fg_pink . s:ft_bold
  exec 'hi cucumberExamples' . s:fg_aqua
  exec 'hi cucumberTags' . s:fg_aqua
  exec 'hi cucumberPlaceholder' . s:fg_aqua

  " Ada Highlighting
  exec 'hi adaInc' . s:fg_aqua . s:ft_bold
  exec 'hi adaSpecial' . s:fg_aqua . s:ft_bold
  exec 'hi adaKeyword' . s:fg_pink
  exec 'hi adaBegin' . s:fg_pink
  exec 'hi adaEnd' . s:fg_pink
  exec 'hi adaTypedef' . s:fg_navy . s:ft_bold
  exec 'hi adaAssignment' . s:fg_aqua . s:ft_bold
  exec 'hi adaAttribute' . s:fg_green

  " COBOL Highlighting
  exec 'hi cobolMarker' . s:fg_comment . s:bg_cursorline
  exec 'hi cobolLine' . s:fg_foreground
  exec 'hi cobolReserved' . s:fg_blue
  exec 'hi cobolDivision' . s:fg_pink . s:ft_bold
  exec 'hi cobolDivisionName' . s:fg_pink . s:ft_bold
  exec 'hi cobolSection' . s:fg_navy . s:ft_bold
  exec 'hi cobolSectionName' . s:fg_navy . s:ft_bold
  exec 'hi cobolParagraph' . s:fg_purple
  exec 'hi cobolParagraphName' . s:fg_purple
  exec 'hi cobolDeclA' . s:fg_purple
  exec 'hi cobolDecl' . s:fg_green
  exec 'hi cobolCALLs' . s:fg_aqua . s:ft_bold
  exec 'hi cobolEXECs' . s:fg_aqua . s:ft_bold

  " GNU sed highlighting
  exec 'hi sedST' . s:fg_purple . s:ft_bold
  exec 'hi sedFlag' . s:fg_purple . s:ft_bold
  exec 'hi sedRegexp47' . s:fg_pink
  exec 'hi sedRegexpMeta' . s:fg_blue . s:ft_bold
  exec 'hi sedReplacement47' . s:fg_olive
  exec 'hi sedReplaceMeta' . s:fg_orange . s:ft_bold
  exec 'hi sedAddress' . s:fg_pink
  exec 'hi sedFunction' . s:fg_aqua . s:ft_bold
  exec 'hi sedBranch' . s:fg_green . s:ft_bold
  exec 'hi sedLabel' . s:fg_green . s:ft_bold

  " }}}

  " Plugin: Netrw
  exec 'hi netrwVersion' . s:fg_red
  exec 'hi netrwList' . s:fg_pink
  exec 'hi netrwHidePat' . s:fg_olive
  exec 'hi netrwQuickHelp' . s:fg_blue
  exec 'hi netrwHelpCmd' . s:fg_blue
  exec 'hi netrwDir' . s:fg_aqua . s:ft_bold
  exec 'hi netrwClassify' . s:fg_pink
  exec 'hi netrwExe' . s:fg_green
  exec 'hi netrwSuffixes' . s:fg_comment
  exec 'hi netrwTreeBar' . s:fg_linenumber_fg

  " Plugin: NERDTree
  exec 'hi NERDTreeUp' . s:fg_comment
  exec 'hi NERDTreeHelpCommand' . s:fg_pink
  exec 'hi NERDTreeHelpTitle' . s:fg_blue . s:ft_bold
  exec 'hi NERDTreeHelpKey' . s:fg_pink
  exec 'hi NERDTreeHelp' . s:fg_foreground
  exec 'hi NERDTreeToggleOff' . s:fg_red
  exec 'hi NERDTreeToggleOn' . s:fg_green
  exec 'hi NERDTreeDir' . s:fg_blue . s:ft_bold
  exec 'hi NERDTreeDirSlash' . s:fg_pink
  exec 'hi NERDTreeFile' . s:fg_foreground
  exec 'hi NERDTreeExecFile' . s:fg_green
  exec 'hi NERDTreeOpenable' . s:fg_pink . s:ft_bold
  exec 'hi NERDTreeClosable' . s:fg_pink

  " Plugin: Tagbar
  exec 'hi TagbarHelpTitle' . s:fg_blue . s:ft_bold
  exec 'hi TagbarHelp' . s:fg_foreground
  exec 'hi TagbarKind' . s:fg_pink
  exec 'hi TagbarSignature' . s:fg_aqua

  " Plugin: Vimdiff
  exec 'hi DiffAdd' . s:fg_diffadd_fg . s:bg_diffadd_bg . s:ft_none
  exec 'hi DiffChange' . s:fg_diffchange_fg . s:bg_diffchange_bg . s:ft_none
  exec 'hi DiffDelete' . s:fg_diffdelete_fg . s:bg_diffdelete_bg . s:ft_none
  exec 'hi DiffText' . s:fg_difftext_fg . s:bg_difftext_bg . s:ft_none

  " Plugin: AGit
  exec 'hi agitHead' . s:fg_green . s:ft_bold
  exec 'hi agitHeader' . s:fg_olive
  exec 'hi agitStatAdded' . s:fg_diffadd_fg
  exec 'hi agitStatRemoved' . s:fg_diffdelete_fg
  exec 'hi agitDiffAdd' . s:fg_diffadd_fg
  exec 'hi agitDiffRemove' . s:fg_diffdelete_fg
  exec 'hi agitDiffHeader' . s:fg_pink
  exec 'hi agitDiff' . s:fg_foreground
  exec 'hi agitDiffIndex' . s:fg_purple
  exec 'hi agitDiffFileName' . s:fg_aqua
  exec 'hi agitLog' . s:fg_foreground
  exec 'hi agitAuthorMark' . s:fg_olive
  exec 'hi agitDateMark' . s:fg_comment
  exec 'hi agitHeaderLabel' . s:fg_aqua
  exec 'hi agitDate' . s:fg_aqua
  exec 'hi agitTree' . s:fg_pink
  exec 'hi agitRef' . s:fg_blue . s:ft_bold
  exec 'hi agitRemote' . s:fg_purple . s:ft_bold
  exec 'hi agitTag' . s:fg_orange . s:ft_bold

  " Plugin: Spell Checking
  exec 'hi SpellBad' . s:fg_foreground . s:bg_spellbad
  exec 'hi SpellCap' . s:fg_foreground . s:bg_spellcap
  exec 'hi SpellRare' . s:fg_foreground . s:bg_spellrare
  exec 'hi SpellLocal' . s:fg_foreground . s:bg_spelllocal

  " Plugin: Indent Guides
  exec 'hi IndentGuidesOdd'  . s:bg_background
  exec 'hi IndentGuidesEven'  . s:bg_cursorline

  " Plugin: Startify
  exec 'hi StartifyFile' . s:fg_blue . s:ft_bold
  exec 'hi StartifyNumber' . s:fg_orange
  exec 'hi StartifyHeader' . s:fg_comment
  exec 'hi StartifySection' . s:fg_pink
  exec 'hi StartifyPath' . s:fg_foreground
  exec 'hi StartifySlash' . s:fg_navy
  exec 'hi StartifyBracket' . s:fg_aqua
  exec 'hi StartifySpecial' . s:fg_aqua

  " Git commit message
  exec 'hi gitcommitSummary' . s:fg_blue
  exec 'hi gitcommitHeader' . s:fg_green . s:ft_bold
  exec 'hi gitcommitSelectedType' . s:fg_blue
  exec 'hi gitcommitSelectedFile' . s:fg_pink
  exec 'hi gitcommitUntrackedFile' . s:fg_diffdelete_fg
  exec 'hi gitcommitBranch' . s:fg_aqua . s:ft_bold

  exec 'hi diffFile' . s:fg_aqua . s:ft_bold
  exec 'hi diffIndexLine' . s:fg_purple
  exec 'hi diffAdded' . s:fg_diffadd_fg
  exec 'hi diffRemoved' . s:fg_diffdelete_fg
  exec 'hi diffLine' . s:fg_orange . s:ft_bold

endfun
" }}}

" =========================== TESTING =====================================
" Run unit testing :call g:PaperColor_Test()

" UNIT TESTING: {{{

fun! s:test_report(test, verbose)
  if a:test[1] != ''
    echo a:test[0]
    echo '==> failed. ' . a:test[1]
    return 1

  elseif a:verbose == 1
    echo a:test[0]
    echo '==> passed.'
    return 0

  endif
endfun

fun! s:palettes_should_have_color00_to_color15()
  let l:premise = "All color palettes should have color00 to color15, each has 2 components"
  let l:error = ''

  for [name, theme] in items(s:themes)

    for l:variant in ['light', 'dark']
      if has_key(theme, l:variant)
        let l:palette = theme[l:variant].palette

        for l:color in ['color00', 'color01', 'color02', 'color03',
              \ 'color04', 'color05', 'color06', 'color07',
              \ 'color08', 'color09', 'color10', 'color11',
              \ 'color12', 'color13', 'color14', 'color15' ]
          if !has_key(l:palette, l:color)
            let l:error .= "s:themes['" . name . "']." . l:variant . ".palette doesn't have " . l:color
            break
          else
            let l:value = l:palette[l:color]
            if len(l:value) != 2
              let l:error .= "s:themes['" . name . "']." . l:variant . ".palette." . l:color . " doesn't have required value"
              break
            endif
          endif
        endfor

        if l:error != ''
          return [l:premise, l:error]
        endif
      endif
    endfor

  endfor

  return [l:premise, l:error]
endfun
" ------------------------------------------------------------------

fun! s:colors_should_have_correct_format()
  let l:premise = "All colors should have correct format like this ['#abcdef', '123'] or []"
  let l:error = ''

  for [name, theme] in items(s:themes)

    for l:variant in ['light', 'dark']
      if has_key(theme, l:variant)
        let l:palette = theme[l:variant].palette

        let l:msg_prefix = "\ns:themes['" . name . "']." . l:variant . ".palette."
        for [l:color, l:value] in items(l:palette)

          let l:value = l:palette[l:color]
          if len(l:value) != 2 && len(l:value) != 0
            let l:error .= msg_prefix . l:color . " doesn't have length 2 or 0"
            continue
          endif

          if len(l:value) == 2
            if l:value[0] == '' && l:value[1] == ''
              let l:error .= msg_prefix . l:color . " doesn't have at least 1 non-empty value"
              continue
            endif

            if stridx(l:value[0], ' ') != -1
              let l:error .= msg_prefix . l:color . " has space in the first value"
              continue
            endif

            if stridx(l:value[1], ' ') != -1
              let l:error .= msg_prefix . l:color . " has space in the second value"
              continue
            endif

            if l:value[0] != '' && l:value[0][0] != '#'
              let l:error .= msg_prefix . l:color . " doesn't have '#' at the beginning of the first value"
              continue
            endif
          endif

        endfor

        " if l:error != ''
        "   return [l:premise, l:error]
        " endif

      endif
    endfor

  endfor

  return [l:premise, l:error]
endfun
" ------------------------------------------------------------------

fun! s:expected_256_only_colors_should_be_consistent()
  let l:premise = 'Palletes that are marked for TEST_256_COLOR_CONSISTENCY should have consitent values of HEX and 256 for each color'
  let l:error = ''

  for [name, theme] in items(s:themes)

    for l:variant in ['light', 'dark']
      if has_key(theme, l:variant)

        if has_key(theme[l:variant], 'TEST_256_COLOR_CONSISTENCY') &&
              \ theme[l:variant].TEST_256_COLOR_CONSISTENCY == 1
          let l:palette = theme[l:variant].palette

          for [l:color, l:value] in items(l:palette)
            if len(l:value) == 2
              let l:value_hex = l:value[0]
              let l:value_256 = l:value[1]
              let l:expected_hex = s:to_HEX[l:value_256]
              if l:value_hex != l:expected_hex
                let l:error .= "\ns:themes['" . name . "']." . l:variant . ".palette  " .
                      \ "Expected: '" . l:color ."' : ['" . l:expected_hex . "', '". l:value_256 . "']"
              endif
            endif
          endfor " end looping through colors

        endif " had TEST_256_COLOR_CONSISTENCY

      endif " had variant
    endfor " end looping through variants

  endfor " end looping through themes

  return [l:premise, l:error]
endfun
" ------------------------------------------------------------------

" TODO: later
" fun! s:test_converter()
"   let l:premise = 'Just test converter'
"   let l:error = ''

"   echo s:to_HEX['134'] . '  ' . s:to_256(s:to_HEX['134']) . ' expected 134'
"   echo s:to_HEX['135'] . '  ' . s:to_256(s:to_HEX['135']) . ' expected 135'
"   echo s:to_HEX['136'] . '  ' . s:to_256(s:to_HEX['136']) . ' expected 136'
"   echo s:to_HEX['234'] . '  ' . s:to_256(s:to_HEX['234']) . ' expected 234'
"   echo s:to_HEX['235'] . '  ' . s:to_256(s:to_HEX['235']) . ' expected 235'
"   echo s:to_HEX['236'] . '  ' . s:to_256(s:to_HEX['236']) . ' expected 236'

"   return [l:premise, l:error]
" endfun
" ------------------------------------------------------------------

fun! g:PaperColor_Test()
  let l:verbose = 1 " 0: only error
  let l:test_functions =  [
        \ function('s:palettes_should_have_color00_to_color15'),
        \ function('s:colors_should_have_correct_format'),
        \ function('s:expected_256_only_colors_should_be_consistent'),
        \ ]

  if l:verbose == 1
    echo '----- PaperColor-Theme ------'
    echo '-------- TEST BEGIN ---------'
  endif

  let l:has_failed = 0

  let l:counter = 0
  for l:Test in l:test_functions
    let l:has_failed = l:has_failed || s:test_report(l:Test(), l:verbose)
    if l:has_failed == 1
      echo ' '
      echo '[FAILED]'
      echo "Failed at test function: " l:Test
      echo ' '
      echo '-----------------------------'
      echo '' 1.0 * l:counter  / len(l:test_functions) * 100
      echon '% passed'
      break
    endif
    let l:counter += 1
  endfor

  if l:verbose == 1
    if l:has_failed == 0
      echo '[SUCCEEDED]'
    endif
    echo '-------- TEST END -----------'
  endif

  return l:has_failed
endfun

" }}}

" INTERMEDIATE FILES GENERATOR: {{{

fun! s:writeToFile(message, file)
  echo a:file
  new
  setlocal buftype=nofile bufhidden=hide noswapfile nobuflisted
  put =a:message
  execute 'w ' a:file
  q
endfun

let s:script_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

fun! g:PaperColor_GenerateSpecs()
  call s:generate_color_palettes()
endfun

fun! s:generate_color_palettes()
  let l:content = ''
  let l:indent1 = '  '
  let l:indent2 = '    '
  for [l:name, l:theme] in items(s:themes)

    let l:content .= l:name . ":\n"
    for l:variant in ['light', 'dark']
      if has_key(l:theme, l:variant)

        let l:content .= l:indent1 . l:variant . ":\n"
        let l:palette = l:theme[l:variant].palette

        for [l:color, l:value] in items(l:palette)
          let l:value_hex = l:value[0]
          " let l:value_256 = l:value[1]
          let l:content .= l:indent2 . l:color . ": " . l:value_hex . "\n"
        endfor " end looping through colors

      endif
    endfor " end looping through variants

  endfor " end looping through themes
  " echo l:content
  call s:writeToFile(l:content, "palettes.yml")
endfun



" }}}

" ============================ MAIN =======================================

" MAIN: {{{

hi clear
syntax reset
let g:colors_name = "PaperColor"

call s:adapt_to_environment()
call s:set_color_variables()
call s:set_syntax_highlighting()

" }}}

" =========================================================================
" Cheers!
" vim: fdm=marker ff=unix
