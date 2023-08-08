
let g:oceanic_next_terminal_italic = get(g:, 'oceanic_next_terminal_italic', 0)
let s:italic = ""

if g:oceanic_next_terminal_italic == 1
  let s:italic = "italic"
endif
" }}}
" {{{ Bold
let g:oceanic_next_terminal_bold = get(g:, 'oceanic_next_terminal_bold', 0)
let s:bold = ""
if g:oceanic_next_terminal_bold == 1
 let s:bold = "bold"
endif

function! s:hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction

function! oceanic_next#highlight( base00, base01, base02, base03, base04, base05, base06, base07, red, orange, yellow, green, cyan, blue, purple, brown, white, none) abort

  call s:hi('Bold',                              '',       '',       s:bold,      '')
  call s:hi('Debug',                             a:red,    '',       '',          '')
  call s:hi('Directory',                         a:blue,   '',       '',          '')
  call s:hi('ErrorMsg',                          a:red,    a:base00, '',          '')
  call s:hi('Exception',                         a:red,    '',       '',          '')
  call s:hi('FoldColumn',                        a:blue,   a:base00, '',          '')
  call s:hi('Folded',                            a:base03, a:base01, s:italic,    '')
  call s:hi('IncSearch',                         a:base01, a:orange, 'NONE',      '')
  call s:hi('Italic',                            '',       '',       s:italic,    '')

  call s:hi('Macro',                             a:red,    '',       '',          '')
  call s:hi('MatchParen',                        a:base05, a:base03, '',          '')
  call s:hi('ModeMsg',                           a:green,  '',       '',          '')
  call s:hi('MoreMsg',                           a:green,  '',       '',          '')
  call s:hi('Question',                          a:blue,   '',       '',          '')
  call s:hi('Search',                            a:base03, a:yellow, '',          '')
  call s:hi('SpecialKey',                        a:base03, '',       '',          '')
  call s:hi('TooLong',                           a:red,    '',       '',          '')
  call s:hi('Underlined',                        a:red,    '',       '',          '')
  call s:hi('Visual',                            '',       a:base02, '',          '')
  call s:hi('VisualNOS',                         a:red,    '',       '',          '')
  call s:hi('WarningMsg',                        a:red,    '',       '',          '')
  call s:hi('WildMenu',                          a:base07, a:blue,   '',          '')
  call s:hi('Title',                             a:blue,   '',       '',          '')
  call s:hi('Conceal',                           a:blue,   a:base00, '',          '')
  call s:hi('Cursor',                            a:base00, a:base05, '',          '')
  call s:hi('NonText',                           a:base03, '',       '',          '')
  call s:hi('Normal',                            a:base07, a:base00, '',          '')
  call s:hi('EndOfBuffer',                       a:base05, a:base00, '',          '')
  call s:hi('LineNr',                            a:base03, a:base00, '',          '')
  call s:hi('SignColumn',                        a:base00, a:base00, '',          '')
  call s:hi('StatusLine',                        a:base01, a:base03, '',          '')
  call s:hi('StatusLineNC',                      a:base03, a:base01, '',          '')
  call s:hi('VertSplit',                         a:base01, a:base00, '',          '')
  call s:hi('ColorColumn',                       '',       a:base01, '',          '')
  call s:hi('CursorColumn',                      '',       a:base01, '',          '')
  call s:hi('CursorLine',                        '',       a:base01, 'None',      '')
  call s:hi('CursorLineNR',                      a:base00, a:base00, '',          '')
  call s:hi('CursorLineNr',                      a:base03, a:base01, '',          '')
  call s:hi('PMenu',                             a:base04, a:base01, '',          '')
  call s:hi('PMenuSel',                          a:base07, a:blue,   '',          '')
  call s:hi('PmenuSbar',                         '',       a:base02, '',          '')
  call s:hi('PmenuThumb',                        '',       a:base07, '',          '')
  call s:hi('TabLine',                           a:base03, a:base01, '',          '')
  call s:hi('TabLineFill',                       a:base03, a:base01, '',          '')
  call s:hi('TabLineSel',                        a:green,  a:base01, '',          '')
  call s:hi('helpExample',                       a:yellow, '',       '',          '')
  call s:hi('helpCommand',                       a:yellow, '',       '',          '')

  " Standard syntax highlighting
  call s:hi('Boolean',                           a:orange, '',       '',          '')
  call s:hi('Character',                         a:red,    '',       '',          '')
  call s:hi('Comment',                           a:base03, '',       s:italic,    '')
  call s:hi('Conditional',                       a:purple, '',       '',          '')
  call s:hi('Constant',                          a:orange, '',       '',          '')
  call s:hi('Define',                            a:purple, '',       '',          '')
  call s:hi('Delimiter',                         a:brown,  '',       '',          '')
  call s:hi('Float',                             a:orange, '',       '',          '')
  call s:hi('Function',                          a:blue,   '',       '',          '')

  call s:hi('Identifier',                        a:cyan,   '',       '',          '')
  call s:hi('Include',                           a:purple, '',       '',          '')
  call s:hi('Keyword',                           a:purple, '',       '',          '')

  call s:hi('Label',                             a:yellow, '',       '',          '')
  call s:hi('Number',                            a:orange, '',       '',          '')
  call s:hi('Operator',                          a:orange, '',       '',          '')
  call s:hi('PreProc',                           a:yellow, '',       '',          '')
  call s:hi('Repeat',                            a:yellow, '',       '',          '')
  call s:hi('Special',                           a:cyan,   '',       '',          '')
  call s:hi('SpecialChar',                       a:brown,  '',       '',          '')
  call s:hi('Statement',                         a:red,    '',       '',          '')
  call s:hi('StorageClass',                      a:yellow, '',       '',          '')
  call s:hi('String',                            a:green,  '',       '',          '')
  call s:hi('Structure',                         a:purple, '',       '',          '')
  call s:hi('Tag',                               a:yellow, '',       '',          '')
  call s:hi('Todo',                              a:yellow, a:base01, '',          '')
  call s:hi('Type',                              a:purple, '',       s:italic,    '')
  call s:hi('Typedef',                           a:purple, '',       s:italic,    '')

  call s:hi('SpellBad',                          '',       '',       'undercurl', '')
  call s:hi('SpellLocal',                        '',       '',       'undercurl', '')
  call s:hi('SpellCap',                          '',       '',       'undercurl', '')
  call s:hi('SpellRare',                         '',       '',       'undercurl', '')

  call s:hi('csClass',                           a:yellow, '',       '',          '')
  call s:hi('csAttribute',                       a:yellow, '',       '',          '')
  call s:hi('csModifier',                        a:purple, '',       '',          '')
  call s:hi('csType',                            a:red,    '',       '',          '')
  call s:hi('csUnspecifiedStatement',            a:blue,   '',       '',          '')
  call s:hi('csContextualStatement',             a:purple, '',       '',          '')
  call s:hi('csNewDecleration',                  a:red,    '',       '',          '')
  call s:hi('cOperator',                         a:cyan,   '',       '',          '')
  call s:hi('cPreCondit',                        a:purple, '',       '',          '')

  call s:hi('cssColor',                          a:cyan,   '',       '',          '')
  call s:hi('cssBraces',                         a:base05, '',       '',          '')
  call s:hi('cssClassName',                      a:purple, '',       '',          '')

  call s:hi('DiffAdd',                           a:green,  a:base01, s:bold,      '')
  call s:hi('DiffChange',                        a:base03, a:base01, '',          '')
  call s:hi('DiffDelete',                        a:red,    a:base01, '',          '')
  call s:hi('DiffText',                          a:blue,   a:base01, '',          '')
  call s:hi('DiffAdded',                         a:base07, a:green,  s:bold,      '')
  call s:hi('DiffFile',                          a:red,    a:base00, '',          '')
  call s:hi('DiffNewFile',                       a:green,  a:base00, '',          '')
  call s:hi('DiffLine',                          a:blue,   a:base00, '',          '')
  call s:hi('DiffRemoved',                       a:base07, a:red,    s:bold,      '')

  call s:hi('gitCommitOverflow',                 a:red,    '',       '',          '')
  call s:hi('gitCommitSummary',                  a:green,  '',       '',          '')

  call s:hi('htmlBold',                          a:yellow, '',       '',          '')
  call s:hi('htmlItalic',                        a:purple, '',       '',          '')
  call s:hi('htmlTag',                           a:cyan,   '',       '',          '')
  call s:hi('htmlEndTag',                        a:cyan,   '',       '',          '')
  call s:hi('htmlArg',                           a:yellow, '',       '',          '')
  call s:hi('htmlTagName',                       a:base07, '',       '',          '')

  call s:hi('javaScript',                        a:base05, '',       '',          '')
  call s:hi('javaScriptNumber',                  a:orange, '',       '',          '')
  call s:hi('javaScriptBraces',                  a:base05, '',       '',          '')

  call s:hi('jsonKeyword',                       a:green,  '',       '',          '')
  call s:hi('jsonQuote',                         a:green,  '',       '',          '')

  call s:hi('markdownCode',                      a:green,  '',       '',          '')
  call s:hi('markdownCodeBlock',                 a:green,  '',       '',          '')
  call s:hi('markdownHeadingDelimiter',          a:blue,   '',       '',          '')
  call s:hi('markdownItalic',                    a:purple, '',       s:italic,    '')
  call s:hi('markdownBold',                      a:yellow, '',       s:bold,      '')
  call s:hi('markdownCodeDelimiter',             a:brown,  '',       s:italic,    '')
  call s:hi('markdownError',                     a:base05, a:base00, '',          '')

  call s:hi('typescriptParens',                  a:base05, a:none,   '',          '')

  call s:hi('NeomakeErrorSign',                  a:red,    a:base00, '',          '')
  call s:hi('NeomakeWarningSign',                a:yellow, a:base00, '',          '')
  call s:hi('NeomakeInfoSign',                   a:white,  a:base00, '',          '')
  call s:hi('NeomakeError',                      a:red,    '',       'underline', a:red)
  call s:hi('NeomakeWarning',                    a:red,    '',       'underline', a:red)

  call s:hi('ALEErrorSign',                      a:red,    a:base00, s:bold,      '')
  call s:hi('ALEWarningSign',                    a:yellow, a:base00, s:bold,      '')
  call s:hi('ALEInfoSign',                       a:white,  a:base00, s:bold,      '')

  call s:hi('NERDTreeExecFile',                  a:base05, '',       '',          '')
  call s:hi('NERDTreeDirSlash',                  a:blue,   '',       '',          '')
  call s:hi('NERDTreeOpenable',                  a:blue,   '',       '',          '')
  call s:hi('NERDTreeFile',                      '',       a:none,   '',          '')
  call s:hi('NERDTreeFlags',                     a:blue,   '',       '',          '')

  call s:hi('YanilTreeFile',                     '',       a:none,   '',          '')

  call s:hi('phpComparison',                     a:base05, '',       '',          '')
  call s:hi('phpParent',                         a:base05, '',       '',          '')
  call s:hi('phpMemberSelector',                 a:base05, '',       '',          '')

  call s:hi('pythonRepeat',                      a:purple, '',       '',          '')
  call s:hi('pythonOperator',                    a:purple, '',       '',          '')

  call s:hi('rubyConstant',                      a:yellow, '',       '',          '')
  call s:hi('rubySymbol',                        a:green,  '',       '',          '')
  call s:hi('rubyAttribute',                     a:blue,   '',       '',          '')
  call s:hi('rubyInterpolation',                 a:green,  '',       '',          '')
  call s:hi('rubyInterpolationDelimiter',        a:brown,  '',       '',          '')
  call s:hi('rubyStringDelimiter',               a:green,  '',       '',          '')
  call s:hi('rubyRegexp',                        a:cyan,   '',       '',          '')

  call s:hi('sassidChar',                        a:red,    '',       '',          '')
  call s:hi('sassClassChar',                     a:orange, '',       '',          '')
  call s:hi('sassInclude',                       a:purple, '',       '',          '')
  call s:hi('sassMixing',                        a:purple, '',       '',          '')
  call s:hi('sassMixinName',                     a:blue,   '',       '',          '')

  call s:hi('vimfilerLeaf',                      a:base05, '',       '',          '')
  call s:hi('vimfilerNormalFile',                a:base05, a:base00, '',          '')
  call s:hi('vimfilerOpenedFile',                a:blue,   '',       '',          '')
  call s:hi('vimfilerClosedFile',                a:blue,   '',       '',          '')

  call s:hi('GitGutterAdd',                      a:green,  a:base00, s:bold,      '')
  call s:hi('GitGutterChange',                   a:blue,   a:base00, s:bold,      '')
  call s:hi('GitGutterDelete',                   a:red,    a:base00, s:bold,      '')
  call s:hi('GitGutterChangeDelete',             a:purple, a:base00, s:bold,      '')

  call s:hi('SignifySignAdd',                    a:green,  a:base00, s:bold,      '')
  call s:hi('SignifySignChange',                 a:blue,   a:base00, s:bold,      '')
  call s:hi('SignifySignDelete',                 a:red,    a:base00, s:bold,      '')
  call s:hi('SignifySignChangeDelete',           a:purple, a:base00, s:bold,      '')
  call s:hi('SignifySignDeleteFirstLine',        a:red,    a:base00, s:bold,      '')

  call s:hi('xmlTag',                            a:cyan,   '',       '',          '')
  call s:hi('xmlTagName',                        a:base05, '',       '',          '')
  call s:hi('xmlEndTag',                         a:cyan,   '',       '',          '')
  call s:hi('Defx_filename_directory',           a:blue,   '',       '',          '')

  call s:hi('CocErrorSign',                      a:red,    '',       '',          '')
  call s:hi('CocWarningSign',                    a:yellow, '',       '',          '')
  call s:hi('CocInfoSign',                       a:blue,   '',       '',          '')
  call s:hi('CocHintSign',                       a:cyan,   '',       '',          '')
  call s:hi('CocErrorFloat',                     a:red,    '',       '',          '')
  call s:hi('CocWarningFloat',                   a:yellow, '',       '',          '')
  call s:hi('CocInfoFloat',                      a:blue,   '',       '',          '')
  call s:hi('CocHintFloat',                      a:cyan,   '',       '',          '')
  call s:hi('CocDiagnosticsError',               a:red,    '',       '',          '')
  call s:hi('CocDiagnosticsWarning',             a:yellow, '',       '',          '')
  call s:hi('CocDiagnosticsInfo',                a:blue,   '',       '',          '')
  call s:hi('CocDiagnosticsHint',                a:cyan,   '',       '',          '')
  call s:hi('CocSelectedText',                   a:purple, '',       '',          '')
  call s:hi('CocCodeLens',                       a:base04, '',       '',          '')

  " LSP
  call s:hi('DiagnosticError',                   '',       '',       '',          '')
  call s:hi('DiagnosticSignError',               a:red,    '',       '',          '')
  call s:hi('DiagnosticUnderlineError',          '',       '',       'undercurl', '')
  call s:hi('DiagnosticFloatingError',           a:red,    '',       '',          '')

  call s:hi('DiagnosticWarn',                    '',       '',       '',          '')
  call s:hi('DiagnosticSignWarn',                a:yellow, '',       '',          '')
  call s:hi('DiagnosticUnderlineWarn',           '',       '',       'undercurl', '')
  call s:hi('DiagnosticFloatingWarn',            a:yellow, '',       '',          '')

  call s:hi('DiagnosticInformation',             '',       '',       '',          '')
  call s:hi('DiagnosticSignInformation',         a:blue,   '',       '',          '')
  call s:hi('DiagnosticUnderlineInformation',    '',       '',       'undercurl', '')
  call s:hi('DiagnosticFloatingInformation',     a:blue,   '',       '',          '')

  call s:hi('DiagnosticHint',                    '',       '',       '',          '')
  call s:hi('DiagnosticSignHint',                a:cyan,   '',       '',          '')
  call s:hi('DiagnosticUnderlineHint',           '',       '',       'undercurl', '')
  call s:hi('DiagnosticFloatingHint',            a:cyan,   '',       '',          '')

	call s:hi('LspReferenceText',                  '',       a:base01, '',          '')
	call s:hi('LspReferenceRead',                  '',       a:base01, '',          '')
	call s:hi('LspReferenceWrite',                 '',       a:base01, '',          '')
  call s:hi('FloatBorder',                       a:base04, '',       '',          '')
  call s:hi('IndentBlanklineChar',               a:base01, '',       'nocombine', '')
  call s:hi('IndentBlanklineSpaceChar',          a:base01, '',       'nocombine', '')
  call s:hi('IndentBlanklineSpaceCharBlankline', a:base01, '',       'nocombine', '')


	if has('nvim')
    " TreeSitter stuff
    call s:hi('@include',                          a:purple, '',       '',          '')
    call s:hi('@punctuation.bracket',              a:cyan,   '',       '',          '')
    call s:hi('@punctuation.delimiter',            a:cyan,   '',       '',          '')
    call s:hi('@punctuation.special',              a:cyan,   '',       '',          '')
    call s:hi('@parameter',                        a:base07, '',       '',          '')
    call s:hi('@type',                             a:yellow, '',       '',          '')
    call s:hi('@function',                         a:blue,   '',       '',          '')

    call s:hi('@tag.delimiter',                    a:cyan,   '',       '',          '')
    call s:hi('@property',                         a:base07, '',       '',          '')
    call s:hi('@method',                           a:blue,   '',       '',          '')
    call s:hi('@parameter',                        a:yellow, '',       '',          '')
    call s:hi('@constructor',                      a:base07, '',       '',          '')
    call s:hi('@variable',                         a:base06, '',       '',          '')
    call s:hi('@operator',                         a:orange, '',       '',          '')
    call s:hi('@tag',                              a:base07, '',       '',          '')
    call s:hi('@keyword',                          a:purple, '',       '',          '')
    call s:hi('@keyword.operator',                 a:purple, '',       '',          '')
    call s:hi('@variable.builtin',                 a:red,    '',       '',          '')
    call s:hi('@label',                            a:cyan,   '',       '',          '')

    call s:hi('@conditional',                      a:purple, '',       '',          '')
    call s:hi('@namespace',                        a:base07, '',       '',          '')
    call s:hi('@symbol',                           a:green,  '',       '',          '')
    call s:hi('@exception',                        a:red,    '',       '',          '')
  endif


  if has('nvim')
    let g:terminal_color_0=a:base00[0]
    let g:terminal_color_8=a:base03[0]

    let g:terminal_color_1=a:red[0]
    let g:terminal_color_9=a:red[0]

    let g:terminal_color_2=a:green[0]
    let g:terminal_color_10=a:green[0]

    let g:terminal_color_3=a:yellow[0]
    let g:terminal_color_11=a:yellow[0]

    let g:terminal_color_4=a:blue[0]
    let g:terminal_color_12=a:blue[0]

    let g:terminal_color_5=a:purple[0]
    let g:terminal_color_13=a:purple[0]

    let g:terminal_color_6=a:cyan[0]
    let g:terminal_color_14=a:cyan[0]

    let g:terminal_color_7=a:base05[0]
    let g:terminal_color_15=a:base05[0]

    let g:terminal_color_background=a:base00[0]
    let g:terminal_color_foreground=a:white[0]
  else
    let g:terminal_ansi_colors = [
       \ a:base00[0],
       \ a:red[0],
       \ a:green[0],
       \ a:yellow[0],
       \ a:blue[0],
       \ a:purple[0],
       \ a:cyan[0],
       \ a:white[0],
       \ a:base03[0],
       \ a:red[0],
       \ a:green[0],
       \ a:yellow[0],
       \ a:blue[0],
       \ a:purple[0],
       \ a:cyan[0],
       \ a:white[0],
       \]
  endif
endfunction
