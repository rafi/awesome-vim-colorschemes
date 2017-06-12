" Name:    rakr vim colorscheme
" Author:  Ramzi Akremi
" License: MIT

" Global setup {{{

hi clear
if exists('syntax_on')
  syntax reset
endif
if exists('g:colors_name')
  unlet g:colors_name
endif
let g:colors_name = 'rakr'
"}}}
if has('gui_running') || &t_Co == 88 || &t_Co == 256
  " functions {{{
  " returns an approximate grey index for the given grey level

  fun <SID>grey_number(x)
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

  " returns the actual grey level represented by the grey index
  fun <SID>grey_level(n)
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

  " returns the palette index for the given grey index
  fun <SID>grey_color(n)
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

  " returns an approximate color index for the given color level
  fun <SID>rgb_number(x)
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

  " returns the actual color level for the given color index
  fun <SID>rgb_level(n)
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

  " returns the palette index for the given R/G/B color indices
  fun <SID>rgb_color(x, y, z)
    if &t_Co == 88
      return 16 + (a:x * 16) + (a:y * 4) + a:z
    else
      return 16 + (a:x * 36) + (a:y * 6) + a:z
    endif
  endfun

  " returns the palette index to approximate the given R/G/B color levels
  fun <SID>color(r, g, b)
    " get the closest grey
    let l:gx = <SID>grey_number(a:r)
    let l:gy = <SID>grey_number(a:g)
    let l:gz = <SID>grey_number(a:b)

    " get the closest color
    let l:x = <SID>rgb_number(a:r)
    let l:y = <SID>rgb_number(a:g)
    let l:z = <SID>rgb_number(a:b)

    if l:gx == l:gy && l:gy == l:gz
      " there are two possibilities
      let l:dgr = <SID>grey_level(l:gx) - a:r
      let l:dgg = <SID>grey_level(l:gy) - a:g
      let l:dgb = <SID>grey_level(l:gz) - a:b
      let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
      let l:dr = <SID>rgb_level(l:gx) - a:r
      let l:dg = <SID>rgb_level(l:gy) - a:g
      let l:db = <SID>rgb_level(l:gz) - a:b
      let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
      if l:dgrey < l:drgb
        " use the grey
        return <SID>grey_color(l:gx)
      else
        " use the color
        return <SID>rgb_color(l:x, l:y, l:z)
      endif
    else
      " only one possibility
      return <SID>rgb_color(l:x, l:y, l:z)
    endif
  endfun

  " returns the palette index to approximate the 'rrggbb' hex string
  fun <SID>rgb(rgb)
    let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
    let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
    let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

    return <SID>color(l:r, l:g, l:b)
  endfun

  " sets the highlighting for the given group
  fun <SID>X(group, fg, bg, attr)
    if a:fg != ""
      exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
    endif
    if a:bg != ""
      exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
    endif
    if a:attr != ""
      exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
    endif
  endfun
  " }}}
  " solarized colors {{{
  let s:basel3   = '002b36'
  let s:basel2   = '073642'
  let s:basel1   = '586e75'
  let s:basel0   = '657b83'
  let s:based0    = '839496'
  let s:based1    = '93a1a1'
  let s:based2    = 'eee8d5'
  let s:based3    = 'fdf6e3'
  let s:yellowl1   = 'b58900'
  let s:orangel1   = 'cb4b16'
  let s:redl1      = 'dc322f'
  let s:magental1  = 'd33682'
  let s:violetl1   = '6c71c4'
  let s:bluel1     = '268bd2'
  let s:cyanl1     = '2aa198'
  let s:greenl1    = '859900'
  let s:yellowd1  = 'b58900'
  let s:oranged1  = 'cb4b16'
  let s:redd1     = 'dc322f'
  let s:magentad1 = 'd33682'
  let s:violetd1  = '6c71c4'
  let s:blued1    = '268bd2'
  let s:cyand1    = '2aa198'
  let s:greend1   = '859900'
  "}}}
  " Flat colors {{{
  let s:basel3   = '212f3e'
  let s:basel2   = '34495e'
  let s:basel1   = '7f8c8d'
  let s:basel0   = '95a5a6'
  let s:based0    = 'bdc3c7'
  let s:based1    = 'C7CBCF'
  let s:based2    = 'ecf0f1'
  let s:based3    = 'f7f7f7'
  let s:cyanl1     = '16a085'
  let s:cyand1    = '07c5ac'
  let s:greenl1    = '2ecc71'
  let s:greend1   = '27ae60'
  let s:bluel1     = '3498db'
  let s:blued1    = '2980b9'
  let s:violetl1   = '8e44ad'
  let s:violetd1  = '9b59b6'
  let s:yellowl1   = 'fec50a'
  let s:yellowd1  = 'FD9809'
  let s:orangel1   = 'f39c12'
  let s:oranged1  = 'd35400'
  let s:magental1  = '7A2B9D'
  let s:magentad1 = 'c8438c'
  let s:redl1      = 'e74c3c'
  let s:redd1     = 'c0392b'
  "}}}
  " Oceanic Next {{{
  let s:basel3   = '141e23'
  let s:basel2   = '343d46'
  let s:basel1   = '4f5b66'
  let s:basel0   = '65737e'
  let s:based0    = 'bdc3c7'
  let s:based1    = 'C7CBCF'
  let s:based2    = 'ecf0f1'
  let s:based3    = 'f7f7f7'
  let s:cyanl1     = '16a085'
  let s:cyand1    = '07c5ac'
  let s:greenl1    = '2ecc71'
  let s:greend1   = '27ae60'
  let s:bluel1     = '3498db'
  let s:blued1    = '2980b9'
  let s:violetl1   = '8e44ad'
  let s:violetd1  = '9b59b6'
  let s:yellowl1   = 'fec50a'
  let s:yellowd1  = 'FD9809'
  let s:orangel1   = 'f39c12'
  let s:oranged1  = 'd35400'
  let s:magental1  = '7A2B9D'
  let s:magentad1 = 'c8438c'
  let s:redl1      = 'e74c3c'
  let s:redd1     = 'c0392b'
  "}}}
  " Flat contrast {{{
  let s:based3    = '141e23'
  let s:based2    = '242d36'
  let s:based1    = '3f4b56'
  let s:based0    = '55636e'
  let s:basel0    = '6c7a89'
  let s:basel1    = '95a5a6'
  let s:basel2    = 'ececec'
  let s:basel3    = 'ffffff'
  let s:cyand1    = '16a085'
  let s:cyanl1    = '07c5ac'
  let s:greend1   = '019875'
  let s:greenl1   = '2ecc71'
  let s:bluel1    = '6bb9f0'
  let s:blued1    = '446cb3'
  let s:violetd1  = '8e44ad'
  let s:violetl1  = '9b59b6'
  let s:yellowl1  = 'f5d76e'
  let s:yellowd1  = 'f89406'
  let s:oranged1  = 'd35400'
  let s:orangel1  = 'f39c12'
  let s:magentad1 = '913d88'
  let s:magental1 = 'c8438c'
  let s:redd1     = 'cf000f'
  let s:redl1     = 'e74c3c'
  let s:pinkd1    = 'db0a5b'
  let s:pinkl1    = 'f62459'
  "}}}
  " Invert colors if background is dark {{{
  if &background ==# 'dark'
    let s:temp03  = s:basel3
    let s:temp02  = s:basel2
    let s:temp01  = s:basel1
    let s:temp00  = s:basel0
    let s:basel3  = s:based3
    let s:basel2  = s:based2
    let s:basel1  = s:based1
    let s:basel0  = s:based0
    let s:based0   = s:temp00
    let s:based1   = s:temp01
    let s:based2   = s:temp02
    let s:based3   = s:temp03

    let s:temp    = s:cyanl1
    let s:cyanl1    = s:cyand1
    let s:cyand1   = s:temp
    let s:temp    = s:greenl1
    let s:greenl1   = s:greend1
    let s:greend1  = s:temp
    let s:temp    = s:bluel1
    let s:bluel1    = s:blued1
    let s:blued1   = s:temp
    let s:temp    = s:violetl1
    let s:violetl1  = s:violetd1
    let s:violetd1 = s:temp
    let s:temp    = s:yellowl1
    let s:yellowl1  = s:yellowd1
    let s:yellowd1 = s:temp
    let s:temp    = s:orangel1
    let s:orangel1  = s:oranged1
    let s:oranged1 = s:temp
    let s:temp    = s:redl1
    let s:redl1     = s:redd1
    let s:redd1    = s:temp
    let s:temp    = s:pinkl1
    let s:pinkl1     = s:pinkd1
    let s:pinkd1    = s:temp
  endif
  "}}}
  " Default Colors {{{
  call <SID>X('Normal',                     s:based1,    s:basel3, 'none')
  call <SID>X('Comment',                    s:basel0,   'none',   'italic')
  call <SID>X('Constant',                   s:redd1,   'none',   'none')
  call <SID>X('Identifier',                 s:blued1,     'none',   'none')
  call <SID>X('Function',                   s:blued1,     'none',   'none')
  call <SID>X('Statement',                  s:greend1,    'none',   'none')
  call <SID>X('PreProc',                    s:oranged1,   'none',   'none')
  call <SID>X('Type',                       s:magental1, 'none',   'none')
  call <SID>X('Special',                    s:redl1,      'none',   'none')
  call <SID>X('Underlined',                 s:violetd1,   'none',   'underline')
  call <SID>X('Ignore',                     'none',     'none',   'none')
  call <SID>X('Error',                      s:yellowl1,      s:redd1,   'bold')
  call <SID>X('Todo',                       s:magentad1,  'none',   'bold')

  call <SID>X('SpecialKey',                 s:based0,   'none',   'reverse')
  call <SID>X('NonText',                    s:based1,   s:basel3, 'none')

  call <SID>X('StatusLine',                 s:based0,    s:basel2, 'none')
  call <SID>X('StatusLineNC',               s:basel1,   s:based2,  'none')

  call <SID>X('Visual',                     s:bluel1,     s:basel3, 'reverse')
  call <SID>X('Directory',                  s:based1,     'none',   'bold')
  call <SID>X('ErrorMsg',                   s:redd1,      'none',   'reverse')
  call <SID>X('IncSearch',                  s:pinkd1,   'none',   'reverse')
  call <SID>X('Search',                     s:yellowd1,   'none',   'reverse')
  call <SID>X('ModeMsg',                    s:bluel1,     'none',   'none')
  call <SID>X('MoreMsg',                    s:bluel1,     'none',   'none')
  call <SID>X('LineNr',                     s:basel0,   s:basel2, 'none')
  call <SID>X('Question',                   s:cyanl1,     'none',   'bold')

  call <SID>X('Delimiter',                  s:redd1,     'none',   'none')

  call <SID>X('Title',                      s:based3,     'none',   'bold')
  call <SID>X('VertSplit',                  s:basel3,   s:basel2, 'none')
  call <SID>X('WarningMsg',                 s:redl1,      'none',   'bold')
  call <SID>X('WildMenu',                   s:based2,    s:basel2, 'reverse,bold')
  call <SID>X('Folded',                     s:based0,    s:basel2, 'bold')
  call <SID>X('FoldColumn',                 s:based0,    s:basel2, 'none')

  call <SID>X('DiffAdd',                    s:greend1,    s:basel2, 'bold')
  call <SID>X('DiffChange',                 s:yellowd1,   s:basel2, 'bold')
  call <SID>X('DiffDelete',                 s:redd1,      s:basel2, 'bold')
  call <SID>X('DiffText',                   s:blued1,     s:basel2, 'bold')

  call <SID>X('SignColumn',                 s:based0,    'none',   'none')
  call <SID>X('Conceal',                    s:bluel1,     'none',   'none')
  call <SID>X('SpellBad',                   s:redl1,      'none',   'underline')
  call <SID>X('SpellCap',                   s:violetl1,   'none',   'underline')
  call <SID>X('SpellRare',                  s:cyanl1,     'none',   'underline')
  call <SID>X('SpellLocal',                 s:yellowl1,   'none',   'underline')
  call <SID>X('PMenu',                      s:based0,    s:basel2, 'none')
  call <SID>X('PMenuSel',                   s:basel1,   s:based2,  'none')
  call <SID>X('PMenuSbar',                  s:based2,    s:based0,  'none')
  call <SID>X('PMenuThumb',                 s:based0,    s:basel2, 'none')
  call <SID>X('TabLine',                    s:based0,    s:basel1, 'underline')
  call <SID>X('TabLineFill',                s:based0,    s:basel1, 'underline')
  call <SID>X('TabLineSel',                 s:basel1,   s:based2,  'underline')
  call <SID>X('CursorLine',                 'none',     s:basel2, 'none')
  call <SID>X('CursorColumn',               'none',     s:basel2, 'none')
  call <SID>X('Cursor',                     'none',     s:basel3, 'none')
  hi link lCursor Cursor
  call <SID>X('CursorLineNr',               s:basel2,     s:basel0,   'bold')
  call <SID>X('MatchParen',                 s:yellowl1,   s:redl1,    'bold')
  
  " }}}
  " CSS/SCSS {{{
  call <SID>X('cssTagName',        s:blued1,    'none', 'bold')
  call <SID>X('cssAttrComma',      s:based1,    'none', 'none')
  call <SID>X('cssBraces',         s:based0,    'none', 'none')
  call <SID>X('cssDimensionProp',  s:oranged1,  'none', 'none')
  call <SID>X('cssProp',           s:oranged1,  'none', 'none')
  call <SID>X('cssAttr',           s:pinkd1,    'none', 'none')
  call <SID>X('cssURL',            s:magental1, 'none', 'underline')
  call <SID>X('cssColor',          s:based1,    'none', 'none')
  call <SID>X('cssValueNumber',    s:pinkd1,    'none', 'none')
  call <SID>X('cssValueLength',    s:pinkd1,    'none', 'none')
  call <SID>X('cssUnitDecorators', s:based1,    'none', 'none')
  call <SID>X('cssPseudoClassId',  s:magental1, 'none', 'none')
  call <SID>X('cssFunctionName',   s:greenl1,   'none', 'none')
  call <SID>X('cssProp',           s:orangel1,  'none', 'none')

  call <SID>X('sassClass',         s:greend1,   'none', 'bold')
  call <SID>X('scssAmpersand',     s:greenl1,   'none', 'bold')
  call <SID>X('scssAttribute',     s:based2,    'none', 'none')
  call <SID>X('scssDefinition',    s:based2,    'none', 'none')
  call <SID>X('sassFunction',      s:magentad1, 'none', 'none')
  call <SID>X('scssFunction',      s:magentad1, 'none', 'none')
  call <SID>X('sassFunctionName',  s:magentad1, 'none', 'none')
  call <SID>X('scssFunctionName',  s:magentad1, 'none', 'none')
  call <SID>X('sassInclude',       s:blued1,    'none', 'bold')
  call <SID>X('scssInclude',       s:blued1,    'none', 'bold')
  call <SID>X('sassMixinName',     s:greend1,   'none', 'none')
  call <SID>X('scssMixinName',     s:greend1,   'none', 'none')
  call <SID>X('scssMixinParams',   s:based2,    'none', 'none')
  call <SID>X('scssSelectorName',  s:redl1,     'none', 'none')
  call <SID>X('scssVariable',      s:cyand1,    'none', 'none')
  "}}}
  " JavaScript (Better with pangloss/vim-javascript plugin) {{{   
  call <SID>X('jsStorageClass',         s:pinkd1,'none',   'bold')
  call <SID>X('jsDocTags',                  s:basel0,   'none',   'bold')
  call <SID>X('jsDocType',                  s:basel0,   'none',   'none')
  call <SID>X('jsDocParam',           s:basel0,   'none',   'none')
  call <SID>X('jsDocTypeNoParam',           s:basel0,   'none',   'none')
  call <SID>X('jsFunction',               s:pinkd1, 'none',   'bold')
  call <SID>X('jsFuncCall',               s:based0, 'none',   'bold')
  call <SID>X('jsFuncBlock',               s:based0, 'none',   'bold')
  call <SID>X('jsOperator',               s:blued1, 'none',   'none')
  call <SID>X('jsFuncName',  s:based1, 'none',   'bold')
  call <SID>X('jsBraces',  s:basel1, 'none',   'none')
  call <SID>X('jsFuncBraces',  s:basel1, 'none',   'bold')
  "}}}
  " Elixir {{{   
  call <SID>X('elixirArguments',            s:blued1, 'none',   'none')
  call <SID>X('elixirAtom',                 s:pinkd1, 'none',   'none')
  call <SID>X('elixirAlias',                s:based0, 'none',   'none')
  call <SID>X('elixirBlockDefinition',      s:pinkd1,'none',   'bold')
  call <SID>X('elixirComment',              s:basel0,   'none',   'italic')
  call <SID>X('elixirDefine',               s:pinkd1, 'none',   'bold')
  call <SID>X('elixirPrivateDefine',        s:pinkl1, 'none',   'bold')
  call <SID>X('elixirDocString',            s:greenl1, 'none',   'none')
  call <SID>X('elixirFunctionDeclaration',  s:based1, 'none',   'bold')
  call <SID>X('elixirInclude',              s:greend1, 'none',   'bold')
  call <SID>X('elixirId'   ,                s:based1, 'none',   'none')
  call <SID>X('elixirOperator',             s:blued1, 'none',   'none')
  call <SID>X('elixirModuleDefine',         s:pinkd1,'none',   'bold')
  call <SID>X('elixirString',               s:redd1, 'none',   'none')
  call <SID>X('elixirStringDelimiter',      s:redl1,'none',   'none')
  call <SID>X('elixirVariable',             s:greend1, 'none',   'none')

  call <SID>X('eelixirDelimiter',           s:magentad1, 'none',   'none')
  "}}}
  " HTML/XML {{{
  call <SID>X('HTMLEndTag',                 s:basel0, 'none',   'bold')
  call <SID>X('HTMLTag',                    s:basel0, 'none',   'bold')
  call <SID>X('HTMLTagN',                   s:basel0,     'none',   'bold')
  call <SID>X('HTMLTagName',                s:based0,  'none',   'none')
  call <SID>X('xmlTagName',                s:based0,  'none',   'none')
  call <SID>X('HTMLArg',                    s:blued1,    'none',   'none')
  call <SID>X('HTMLLink',                   s:based3,     'none',   'underline')
  call <SID>X('HTMLString',                 s:pinkd1,     'none',   'none')
  "}}}
  " NERDTree {{{
  call <SID>X('NERDTreeCWD',                s:bluel1,     'none',   'bold')
  call <SID>X('NERDTreeFile',               s:based2,     'none',   'none')
  call <SID>X('NERDTreeDirSlash',           s:orangel1,   'none',   'none')
  call <SID>X('NERDTreeGitFlags',           s:based2,     'none',   'none')
  call <SID>X('NERDTreeGitStatusDirDirty',  s:magental1,  'none',   'bold')
  call <SID>X('NERDTreeGitStatusModified',  s:orangel1,   'none',   'bold')
  call <SID>X('NERDTreeGitStatusUntracked', s:based2,     'none',   'bold')
  call <SID>X('NERDTreeOpenable',           s:bluel1,     'none',   'none')
  call <SID>X('NERDTreeClosable',           s:bluel1,     'none',   'none')
  call <SID>X('NERDTreeHelpTitle',          s:based2,     'none',   'bold')
  call <SID>X('NERDTreeHelp',               s:based2,     'none',   'none')
  call <SID>X('NERDTreeHelpCommand',        s:blued1,     'none',   'none')
  call <SID>X('NERDTreeHelpKey',            s:redd1,      'none',   'bold')
  call <SID>X('NERDTreeToggleOn',           s:greend1,    'none',   'bold')
  call <SID>X('NERDTreeToggleOff',          s:redd1,     ' none',   'bold')

" NERDTress File highlighting
"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  "exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg=#'. a:guibg .' guifg=#'. a:guifg
  "exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
"endfunction

"call NERDTreeHighlightFile('jade',      'green',  'none', s:greenl1,  'none')
"call NERDTreeHighlightFile('md',        'blue',   'none', s:bluel1,   'none')
"call NERDTreeHighlightFile('markdown',  'blue',   'none', s:bluel1,   'none')
"call NERDTreeHighlightFile('config',    'yellow', 'none', s:yellowl1, 'none')
"call NERDTreeHighlightFile('conf',      'yellow', 'none', s:yellowl1, 'none')
"call NERDTreeHighlightFile('json',      'green',  'none', s:magental1,  'none')
"call NERDTreeHighlightFile('yml',      'green',  'none', s:magental1,  'none')
"call NERDTreeHighlightFile('xml',      'green',  'none', s:magental1,  'none')
"call NERDTreeHighlightFile('html',      'green',  'none', s:greenl1,  'none')
"call NERDTreeHighlightFile('css',       'cyan',   'none', s:cyand1,   'none')
"call NERDTreeHighlightFile('sass',      'cyan',   'none', s:cyanl1,   'none')
"call NERDTreeHighlightFile('scss',      'cyan',   'none', s:cyanl1,   'none')
"call NERDTreeHighlightFile('coffee',    'Red',    'none', s:oranged1,    'none')
"call NERDTreeHighlightFile('js',        'Red',    'none', s:orangel1,    'none')
"call NERDTreeHighlightFile('rb',        'Red',    'none', s:redl1,    'none')
"call NERDTreeHighlightFile('ru',        'Red',    'none', s:redd1,    'none')
"call NERDTreeHighlightFile('ts',        'Blue',   'none', s:bluel1,   'none')
"call NERDTreeHighlightFile('ds_store',  'Gray',   'none', s:based1,  'none')
"call NERDTreeHighlightFile('gitconfig', 'black',  'none', s:based1,  'none')
"call NERDTreeHighlightFile('gitignore', 'Gray',   'none', s:based1,  'none')



  "}}}
  " Ruby highlighting {{{

  call <SID>X('rubyArrayDelimiter',        s:basel0,   'none', 'none')
  call <SID>X('rubyBoolean',               s:violetd1, 'none', 'bold')
  call <SID>X('rubySymbol',                s:pinkd1,   'none', 'none')
  call <SID>X('rubyControl',               s:pinkd1,   'none', 'bold')
  call <SID>X('rubyClass',               s:blued1,   'none', 'bold')
  call <SID>X('rubyBlock',                 s:based1,   'none', 'none')
  call <SID>X('rubyDoBlock',               s:based1,   'none', 'none')
  call <SID>X('rubyMethodBlock',           s:based1,   'none', 'none')
  call <SID>X('rubyCurlyBlockDelimiter',   s:based1,   'none', 'none')
  call <SID>X('rubyDefine',                s:pinkd1,   'none', 'bold')
  call <SID>X('rubyConditionalExpression', s:based1,   'none', 'none')

  " }}}
  " tmux {{{
  call <SID>X('tmuxCmds', s:based2, 'none', 'none')
  " }}}
  " Plug {{{
  call <SID>X('PlugName', s:based2, 'none', 'bold')
  " }}}
  " vim syntax highlightling {{{
  call <SID>X('helpHyperTextJump', s:magental1, 'none',   'underline')
  call <SID>X('helpURL',           s:redl1,     'none',   'underline')
  call <SID>X('helpExample',       s:based1,    'none',   'none')
  call <SID>X('helpHeadline',      s:based3,    'none',   'bold')
  call <SID>X('helpSectionDelim',  s:basel1,    'none',   'none')
  call <SID>X('vimBracket',        s:redd1,     'none',   'none')
  call <SID>X('vimIsCommand',      s:based2,    'none',   'none')
  call <SID>X('vimCommand',        s:blued1,  'none',   'none')
  call <SID>X('vimCommandSep',     s:blued1,    'none',   'none')
  call <SID>X('vimCommentString',  s:basel1,    'none',   'underline,italic')
  call <SID>X('vimGroup',          s:based1,    'none',   'none')
  call <SID>X('vimHiLink',         s:based1,    'none',   'none')
  call <SID>X('vimHiGroup',        s:based1,    'none',   'none')
  call <SID>X('vimString',         s:greend1,   'none',   'none')
  call <SID>X('vimOper',           s:greend1,   'none',   'none')
  call <SID>X('vimOperParen',      s:greend1,   'none',   'none')
  call <SID>X('vimSyncMtchOpt',    s:yellowd1,  'none',   'none')
  call <SID>X('vimFuncVar',        s:blued1,    'none',   'none')
  call <SID>X('vimVar',            s:blued1,    'none',   'none')
  call <SID>X('vimEnvVar',         s:blued1,    'none',   'none')
  call <SID>X('vimComment',        s:based0,    'none',   'italic')
  call <SID>X('vimLineComment',    s:based0,    'none',   'italic')
  call <SID>X('vimCommentTitke',   s:based0,    'none',   'bold,italic')
  call <SID>X('vimFunc',           s:blued1,    'none',   'none')
  call <SID>X('vimUserFunc',       s:blued1,    'none',   'none')
  call <SID>X('vimSet',            s:based3,    s:basel3, 'none')
  call <SID>X('vimSetEqual',       s:based3,    s:basel3, 'none')
  "}}}
endif
" delete functions {{{
delf <SID>X
delf <SID>rgb
delf <SID>color
delf <SID>rgb_color
delf <SID>rgb_level
delf <SID>rgb_number
delf <SID>grey_color
delf <SID>grey_level
delf <SID>grey_number
" }}}
" vim: set fdl=0 fdm=marker:
