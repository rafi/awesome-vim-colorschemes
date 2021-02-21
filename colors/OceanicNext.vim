" ===============================================================
" OceanicNext
" Author: Mike Hartington
" ===============================================================

" {{{ Setup
  set background=dark
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
  let g:colors_name="OceanicNext"
" }}}
" {{{ Italics
  let g:oceanic_next_terminal_italic = get(g:, 'oceanic_next_terminal_italic', 0)
  let s:italic = ""
  if g:oceanic_next_terminal_italic == 1
    let s:italic = "italic"
  endif
"}}}
" {{{ Bold
  let g:oceanic_next_terminal_bold = get(g:, 'oceanic_next_terminal_bold', 0)
  let s:bold = ""
  if g:oceanic_next_terminal_bold == 1
   let s:bold = "bold"
  endif
"}}}
" {{{ Colors
  let s:base00 = ['#1b2b34', '235']
  let s:base01 = ['#343d46', '237']
  let s:base02 = ['#4f5b66', '240']
  let s:base03 = ['#65737e', '243']
  let s:base04 = ['#a7adba', '145']
  let s:base05 = ['#c0c5ce', '251']
  let s:base06 = ['#cdd3de', '252']
  let s:base07 = ['#d8dee9', '253']
  let s:red    = ['#ec5f67', '203']
  let s:orange = ['#f99157', '209']
  let s:yellow = ['#fac863', '221']
  let s:green  = ['#99c794', '114']
  let s:cyan   = ['#62b3b2', '73']
  let s:blue   = ['#6699cc', '68']
  let s:purple = ['#c594c5', '176']
  let s:brown  = ['#ab7967', '137']
  let s:white  = ['#ffffff', '15']
  let s:none   = ['NONE',    'NONE']

" }}}
" {{{ Highlight function
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
" }}}
" {{{ call s::hi(group, fg, bg, gui, guisp)
  call s:hi('Bold',                               '',       '',       s:bold,      '')
  call s:hi('Debug',                              s:red,    '',       '',          '')
  call s:hi('Directory',                          s:blue,   '',       '',          '')
  call s:hi('ErrorMsg',                           s:red,    s:base00, '',          '')
  call s:hi('Exception',                          s:red,    '',       '',          '')
  call s:hi('FoldColumn',                         s:blue,   s:base00, '',          '')
  call s:hi('Folded',                             s:base03, s:base01, s:italic,    '')
  call s:hi('IncSearch',                          s:base01, s:orange, 'NONE',      '')
  call s:hi('Italic',                             '',       '',       s:italic,    '')

  call s:hi('Macro',                              s:red,    '',       '',          '')
  call s:hi('MatchParen',                         s:base05, s:base03, '',          '')
  call s:hi('ModeMsg',                            s:green,  '',       '',          '')
  call s:hi('MoreMsg',                            s:green,  '',       '',          '')
  call s:hi('Question',                           s:blue,   '',       '',          '')
  call s:hi('Search',                             s:base03, s:yellow, '',          '')
  call s:hi('SpecialKey',                         s:base03, '',       '',          '')
  call s:hi('TooLong',                            s:red,    '',       '',          '')
  call s:hi('Underlined',                         s:red,    '',       '',          '')
  call s:hi('Visual',                             '',       s:base02, '',          '')
  call s:hi('VisualNOS',                          s:red,    '',       '',          '')
  call s:hi('WarningMsg',                         s:red,    '',       '',          '')
  call s:hi('WildMenu',                           s:base07, s:blue,   '',          '')
  call s:hi('Title',                              s:blue,   '',       '',          '')
  call s:hi('Conceal',                            s:blue,   s:base00, '',          '')
  call s:hi('Cursor',                             s:base00, s:base05, '',          '')
  call s:hi('NonText',                            s:base03, '',       '',          '')
  call s:hi('Normal',                             s:base07, s:base00, '',          '')
  call s:hi('EndOfBuffer',                        s:base05, s:base00, '',          '')
  call s:hi('LineNr',                             s:base03, s:base00, '',          '')
  call s:hi('SignColumn',                         s:base00, s:base00, '',          '')
  call s:hi('StatusLine',                         s:base01, s:base03, '',          '')
  call s:hi('StatusLineNC',                       s:base03, s:base01, '',          '')
  call s:hi('VertSplit',                          s:base00, s:base02, '',          '')
  call s:hi('ColorColumn',                        '',       s:base01, '',          '')
  call s:hi('CursorColumn',                       '',       s:base01, '',          '')
  call s:hi('CursorLine',                         '',       s:base01, 'None',      '')
  call s:hi('CursorLineNR',                       s:base00, s:base00, '',          '')
  call s:hi('CursorLineNr',                       s:base03, s:base01, '',          '')
  call s:hi('PMenu',                              s:base04, s:base01, '',          '')
  call s:hi('PMenuSel',                           s:base07, s:blue,   '',          '')
  call s:hi('PmenuSbar',                          '',       s:base02, '',          '')
  call s:hi('PmenuThumb',                         '',       s:base07, '',          '')
  call s:hi('TabLine',                            s:base03, s:base01, '',          '')
  call s:hi('TabLineFill',                        s:base03, s:base01, '',          '')
  call s:hi('TabLineSel',                         s:green,  s:base01, '',          '')
  call s:hi('helpExample',                        s:yellow, '',       '',          '')
  call s:hi('helpCommand',                        s:yellow, '',       '',          '')

  " Standard syntax highlighting
  call s:hi('Boolean',                            s:orange, '',       '',          '')
  call s:hi('Character',                          s:red,    '',       '',          '')
  call s:hi('Comment',                            s:base03, '',       s:italic,    '')
  call s:hi('Conditional',                        s:purple, '',       '',          '')
  call s:hi('Constant',                           s:orange, '',       '',          '')
  call s:hi('Define',                             s:purple, '',       '',          '')
  call s:hi('Delimiter',                          s:brown,  '',       '',          '')
  call s:hi('Float',                              s:orange, '',       '',          '')
  call s:hi('Function',                           s:blue,   '',       '',          '')

  call s:hi('Identifier',                         s:cyan,   '',       '',          '')
  call s:hi('Include',                            s:blue,   '',       '',          '')
  call s:hi('Keyword',                            s:purple, '',       '',          '')

  call s:hi('Label',                              s:yellow, '',       '',          '')
  call s:hi('Number',                             s:orange, '',       '',          '')
  call s:hi('Operator',                           s:base05, '',       '',          '')
  call s:hi('PreProc',                            s:yellow, '',       '',          '')
  call s:hi('Repeat',                             s:yellow, '',       '',          '')
  call s:hi('Special',                            s:cyan,   '',       '',          '')
  call s:hi('SpecialChar',                        s:brown,  '',       '',          '')
  call s:hi('Statement',                          s:red,    '',       '',          '')
  call s:hi('StorageClass',                       s:yellow, '',       '',          '')
  call s:hi('String',                             s:green,  '',       '',          '')
  call s:hi('Structure',                          s:purple, '',       '',          '')
  call s:hi('Tag',                                s:yellow, '',       '',          '')
  call s:hi('Todo',                               s:yellow, s:base01, '',          '')
  call s:hi('Type',                               s:yellow, '',       '',          '')
  call s:hi('Typedef',                            s:yellow, '',       '',          '')

  " LSP
  call s:hi('LspDiagnosticsDefaultError',         '',       '',       '',          '')
  call s:hi('LspDiagnosticsSignError',            s:red,    '',       '',          '')
  call s:hi('LspDiagnosticsUnderlineError',       '',       '',       'undercurl', '')

  call s:hi('LspDiagnosticsDefaultWarning',       '',       '',       '',          '')
  call s:hi('LspDiagnosticsSignWarning',          s:yellow, '',       '',          '')
  call s:hi('LspDiagnosticsUnderlineWarning',     '',       '',       'undercurl', '')

  call s:hi('LspDiagnosticsDefaultInformation',   '',       '',       '',          '')
  call s:hi('LspDiagnosticsSignInformation',      s:blue,   '',       '',          '')
  call s:hi('LspDiagnosticsUnderlineInformation', '',       '',       'undercurl', '')

  call s:hi('LspDiagnosticsDefaultHint',          '',       '',       '',          '')
  call s:hi('LspDiagnosticsSignHint',             s:cyan,   '',       '',          '')
  call s:hi('LspDiagnosticsUnderlineHint',        '',       '',       'undercurl', '')


  " TreeSitter stuff
  call s:hi('TSInclude',                          s:cyan,   '',       '',          '')
  call s:hi('TSPunctBracket',                     s:cyan,   '',       '',          '')
  call s:hi('TSPunctDelimiter',                   s:base07, '',       '',          '')
  call s:hi('TSParameter',                        s:base07, '',       '',          '')
  call s:hi('TSType',                             s:blue,   '',       '',          '')
  call s:hi('TSFunction',                         s:cyan,   '',       '',          '')

  call s:hi('TSTagDelimiter',                     s:cyan,   '',       '',          '')
  call s:hi('TSProperty',                         s:yellow, '',       '',          '')
  call s:hi('TSMethod',                           s:blue,   '',       '',          '')
  call s:hi('TSParameter',                        s:yellow, '',       '',          '')
  call s:hi('TSConstructor',                      s:base07, '',       '',          '')
  call s:hi('TSVariable',                         s:base07, '',       '',          '')
  call s:hi('TSOperator',                         s:base07, '',       '',          '')
  call s:hi('TSTag',                              s:base07, '',       '',          '')
  call s:hi('TSKeyword',                          s:purple, '',       '',          '')
  call s:hi('TSKeywordOperator',                  s:purple, '',       '',          '')
  call s:hi('TSVariableBuiltin',                  s:red,    '',       '',          '')
  call s:hi('TSLabel',                            s:cyan,   '',       '',          '')

  call s:hi('SpellBad',                           '',       '',       'undercurl', '')
  call s:hi('SpellLocal',                         '',       '',       'undercurl', '')
  call s:hi('SpellCap',                           '',       '',       'undercurl', '')
  call s:hi('SpellRare',                          '',       '',       'undercurl', '')

  call s:hi('csClass',                            s:yellow, '',       '',          '')
  call s:hi('csAttribute',                        s:yellow, '',       '',          '')
  call s:hi('csModifier',                         s:purple, '',       '',          '')
  call s:hi('csType',                             s:red,    '',       '',          '')
  call s:hi('csUnspecifiedStatement',             s:blue,   '',       '',          '')
  call s:hi('csContextualStatement',              s:purple, '',       '',          '')
  call s:hi('csNewDecleration',                   s:red,    '',       '',          '')
  call s:hi('cOperator',                          s:cyan,   '',       '',          '')
  call s:hi('cPreCondit',                         s:purple, '',       '',          '')

  call s:hi('cssColor',                           s:cyan,   '',       '',          '')
  call s:hi('cssBraces',                          s:base05, '',       '',          '')
  call s:hi('cssClassName',                       s:purple, '',       '',          '')


  call s:hi('DiffAdd',                            s:green,  s:base01, s:bold,      '')
  call s:hi('DiffChange',                         s:base03, s:base01, '',          '')
  call s:hi('DiffDelete',                         s:red,    s:base01, '',          '')
  call s:hi('DiffText',                           s:blue,   s:base01, '',          '')
  call s:hi('DiffAdded',                          s:base07, s:green,  s:bold,      '')
  call s:hi('DiffFile',                           s:red,    s:base00, '',          '')
  call s:hi('DiffNewFile',                        s:green,  s:base00, '',          '')
  call s:hi('DiffLine',                           s:blue,   s:base00, '',          '')
  call s:hi('DiffRemoved',                        s:base07, s:red,    s:bold,      '')

  call s:hi('gitCommitOverflow',                  s:red,    '',       '',          '')
  call s:hi('gitCommitSummary',                   s:green,  '',       '',          '')

  call s:hi('htmlBold',                           s:yellow, '',       '',          '')
  call s:hi('htmlItalic',                         s:purple, '',       '',          '')
  call s:hi('htmlTag',                            s:cyan,   '',       '',          '')
  call s:hi('htmlEndTag',                         s:cyan,   '',       '',          '')
  call s:hi('htmlArg',                            s:yellow, '',       '',          '')
  call s:hi('htmlTagName',                        s:base07, '',       '',          '')

  call s:hi('javaScript',                         s:base05, '',       '',          '')
  call s:hi('javaScriptNumber',                   s:orange, '',       '',          '')
  call s:hi('javaScriptBraces',                   s:base05, '',       '',          '')

  call s:hi('jsonKeyword',                        s:green,  '',       '',          '')
  call s:hi('jsonQuote',                          s:green,  '',       '',          '')

  call s:hi('markdownCode',                       s:green,  '',       '',          '')
  call s:hi('markdownCodeBlock',                  s:green,  '',       '',          '')
  call s:hi('markdownHeadingDelimiter',           s:blue,   '',       '',          '')
  call s:hi('markdownItalic',                     s:purple, '',       s:italic,    '')
  call s:hi('markdownBold',                       s:yellow, '',       s:bold,      '')
  call s:hi('markdownCodeDelimiter',              s:brown,  '',       s:italic,    '')
  call s:hi('markdownError',                      s:base05, s:base00, '',          '')

  call s:hi('typescriptParens',                   s:base05, s:none,   '',          '')

  call s:hi('NeomakeErrorSign',                   s:red,    s:base00, '',          '')
  call s:hi('NeomakeWarningSign',                 s:yellow, s:base00, '',          '')
  call s:hi('NeomakeInfoSign',                    s:white,  s:base00, '',          '')
  call s:hi('NeomakeError',                       s:red,    '',       'underline', s:red)
  call s:hi('NeomakeWarning',                     s:red,    '',       'underline', s:red)

  call s:hi('ALEErrorSign',                       s:red,    s:base00, s:bold,      '')
  call s:hi('ALEWarningSign',                     s:yellow, s:base00, s:bold,      '')
  call s:hi('ALEInfoSign',                        s:white,  s:base00, s:bold,      '')

  call s:hi('NERDTreeExecFile',                   s:base05, '',       '',          '')
  call s:hi('NERDTreeDirSlash',                   s:blue,   '',       '',          '')
  call s:hi('NERDTreeOpenable',                   s:blue,   '',       '',          '')
  call s:hi('NERDTreeFile',                       '',       s:none,   '',          '')
  call s:hi('NERDTreeFlags',                      s:blue,   '',       '',          '')

  call s:hi('phpComparison',                      s:base05, '',       '',          '')
  call s:hi('phpParent',                          s:base05, '',       '',          '')
  call s:hi('phpMemberSelector',                  s:base05, '',       '',          '')

  call s:hi('pythonRepeat',                       s:purple, '',       '',          '')
  call s:hi('pythonOperator',                     s:purple, '',       '',          '')

  call s:hi('rubyConstant',                       s:yellow, '',       '',          '')
  call s:hi('rubySymbol',                         s:green,  '',       '',          '')
  call s:hi('rubyAttribute',                      s:blue,   '',       '',          '')
  call s:hi('rubyInterpolation',                  s:green,  '',       '',          '')
  call s:hi('rubyInterpolationDelimiter',         s:brown,  '',       '',          '')
  call s:hi('rubyStringDelimiter',                s:green,  '',       '',          '')
  call s:hi('rubyRegexp',                         s:cyan,   '',       '',          '')

  call s:hi('sassidChar',                         s:red,    '',       '',          '')
  call s:hi('sassClassChar',                      s:orange, '',       '',          '')
  call s:hi('sassInclude',                        s:purple, '',       '',          '')
  call s:hi('sassMixing',                         s:purple, '',       '',          '')
  call s:hi('sassMixinName',                      s:blue,   '',       '',          '')

  call s:hi('vimfilerLeaf',                       s:base05, '',       '',          '')
  call s:hi('vimfilerNormalFile',                 s:base05, s:base00, '',          '')
  call s:hi('vimfilerOpenedFile',                 s:blue,   '',       '',          '')
  call s:hi('vimfilerClosedFile',                 s:blue,   '',       '',          '')

  call s:hi('GitGutterAdd',                       s:green,  s:base00, s:bold,      '')
  call s:hi('GitGutterChange',                    s:blue,   s:base00, s:bold,      '')
  call s:hi('GitGutterDelete',                    s:red,    s:base00, s:bold,      '')
  call s:hi('GitGutterChangeDelete',              s:purple, s:base00, s:bold,      '')

  call s:hi('SignifySignAdd',                     s:green,  s:base00, s:bold,      '')
  call s:hi('SignifySignChange',                  s:blue,   s:base00, s:bold,      '')
  call s:hi('SignifySignDelete',                  s:red,    s:base00, s:bold,      '')
  call s:hi('SignifySignChangeDelete',            s:purple, s:base00, s:bold,      '')
  call s:hi('SignifySignDeleteFirstLine',         s:red,    s:base00, s:bold,      '')

  call s:hi('xmlTag',                             s:cyan,   '',       '',          '')
  call s:hi('xmlTagName',                         s:base05, '',       '',          '')
  call s:hi('xmlEndTag',                          s:cyan,   '',       '',          '')
  call s:hi('Defx_filename_directory',            s:blue,   '',       '',          '')

  call s:hi('CocErrorSign',                       s:red,    '',       '',          '')
  call s:hi('CocWarningSign',                     s:yellow, '',       '',          '')
  call s:hi('CocInfoSign',                        s:blue,   '',       '',          '')
  call s:hi('CocHintSign',                        s:cyan,   '',       '',          '')
  call s:hi('CocErrorFloat',                      s:red,    '',       '',          '')
  call s:hi('CocWarningFloat',                    s:yellow, '',       '',          '')
  call s:hi('CocInfoFloat',                       s:blue,   '',       '',          '')
  call s:hi('CocHintFloat',                       s:cyan,   '',       '',          '')
  call s:hi('CocDiagnosticsError',                s:red,    '',       '',          '')
  call s:hi('CocDiagnosticsWarning',              s:yellow, '',       '',          '')
  call s:hi('CocDiagnosticsInfo',                 s:blue,   '',       '',          '')
  call s:hi('CocDiagnosticsHint',                 s:cyan,   '',       '',          '')
  call s:hi('CocSelectedText',                    s:purple, '',       '',          '')
  call s:hi('CocCodeLens',                        s:base04, '',       '',          '')
" }}}
" {{{ Terminal
if has('nvim')
  let g:terminal_color_0=s:base00[0]
  let g:terminal_color_8=s:base03[0]

  let g:terminal_color_1=s:red[0]
  let g:terminal_color_9=s:red[0]

  let g:terminal_color_2=s:green[0]
  let g:terminal_color_10=s:green[0]

  let g:terminal_color_3=s:yellow[0]
  let g:terminal_color_11=s:yellow[0]

  let g:terminal_color_4=s:blue[0]
  let g:terminal_color_12=s:blue[0]

  let g:terminal_color_5=s:purple[0]
  let g:terminal_color_13=s:purple[0]

  let g:terminal_color_6=s:cyan[0]
  let g:terminal_color_14=s:cyan[0]

  let g:terminal_color_7=s:base05[0]
  let g:terminal_color_15=s:base05[0]

  let g:terminal_color_background=s:base00[0]
  let g:terminal_color_foreground=s:white[0]
else
  let g:terminal_ansi_colors = [
     \ s:base00[0],
     \ s:red[0],
     \ s:green[0],
     \ s:yellow[0],
     \ s:blue[0],
     \ s:purple[0],
     \ s:cyan[0],
     \ s:white[0],
     \ s:base03[0],
     \ s:red[0],
     \ s:green[0],
     \ s:yellow[0],
     \ s:blue[0],
     \ s:purple[0],
     \ s:cyan[0],
     \ s:white[0],
     \]

endif

