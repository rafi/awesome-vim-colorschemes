" -----------------------------------------------------------------------------
" Name:         Sonokai
" Description:  High Contrast & Vivid Color Scheme based on Monokai Pro
" Author:       Sainnhepark <sainnhe@gmail.com>
" Website:      https://github.com/sainnhe/sonokai/
" License:      MIT
" -----------------------------------------------------------------------------

" Initialization: {{{
let s:configuration = sonokai#get_configuration()
let s:palette = sonokai#get_palette(s:configuration.style)
let s:path = expand('<sfile>:p') " the path of this script
let s:last_modified = 'Tue Jan 19 10:49:00 AM UTC 2021'
let g:sonokai_loaded_file_types = []

if !(exists('g:colors_name') && g:colors_name ==# 'sonokai' && s:configuration.better_performance)
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'sonokai'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif
" }}}
" Common Highlight Groups: {{{
" UI: {{{
if s:configuration.transparent_background
  call sonokai#highlight('Normal', s:palette.fg, s:palette.none)
  call sonokai#highlight('Terminal', s:palette.fg, s:palette.none)
  call sonokai#highlight('EndOfBuffer', s:palette.bg0, s:palette.none)
  call sonokai#highlight('Folded', s:palette.grey, s:palette.none)
  call sonokai#highlight('ToolbarLine', s:palette.fg, s:palette.none)
  call sonokai#highlight('SignColumn', s:palette.fg, s:palette.none)
  call sonokai#highlight('FoldColumn', s:palette.grey, s:palette.none)
else
  call sonokai#highlight('Normal', s:palette.fg, s:palette.bg0)
  call sonokai#highlight('Terminal', s:palette.fg, s:palette.bg0)
  call sonokai#highlight('EndOfBuffer', s:palette.bg0, s:palette.bg0)
  call sonokai#highlight('Folded', s:palette.grey, s:palette.bg1)
  call sonokai#highlight('ToolbarLine', s:palette.fg, s:palette.bg2)
  if s:configuration.sign_column_background ==# 'default'
    call sonokai#highlight('SignColumn', s:palette.fg, s:palette.bg1)
    call sonokai#highlight('FoldColumn', s:palette.grey, s:palette.bg1)
  else
    call sonokai#highlight('SignColumn', s:palette.fg, s:palette.none)
    call sonokai#highlight('FoldColumn', s:palette.grey, s:palette.none)
  endif
endif
call sonokai#highlight('IncSearch', s:palette.bg0, s:palette.bg_red)
call sonokai#highlight('Search', s:palette.bg0, s:palette.bg_green)
call sonokai#highlight('ColorColumn', s:palette.none, s:palette.bg1)
call sonokai#highlight('Conceal', s:palette.grey, s:palette.none)
if s:configuration.cursor ==# 'auto'
  call sonokai#highlight('Cursor', s:palette.none, s:palette.none, 'reverse')
else
  call sonokai#highlight('Cursor', s:palette.bg0, s:palette[s:configuration.cursor])
endif
highlight! link vCursor Cursor
highlight! link iCursor Cursor
highlight! link lCursor Cursor
highlight! link CursorIM Cursor
if &diff
  call sonokai#highlight('CursorLine', s:palette.none, s:palette.none, 'underline')
  call sonokai#highlight('CursorColumn', s:palette.none, s:palette.none, 'bold')
else
  call sonokai#highlight('CursorLine', s:palette.none, s:palette.bg1)
  call sonokai#highlight('CursorColumn', s:palette.none, s:palette.bg1)
endif
call sonokai#highlight('LineNr', s:palette.grey, s:palette.none)
if &diff
  call sonokai#highlight('CursorLineNr', s:palette.fg, s:palette.none, 'underline')
elseif (&relativenumber == 1 && &cursorline == 0) || s:configuration.sign_column_background !=# 'default'
  call sonokai#highlight('CursorLineNr', s:palette.fg, s:palette.none)
else
  call sonokai#highlight('CursorLineNr', s:palette.fg, s:palette.bg1)
endif
call sonokai#highlight('DiffAdd', s:palette.none, s:palette.diff_green)
call sonokai#highlight('DiffChange', s:palette.none, s:palette.diff_blue)
call sonokai#highlight('DiffDelete', s:palette.none, s:palette.diff_red)
call sonokai#highlight('DiffText', s:palette.bg0, s:palette.fg)
call sonokai#highlight('Directory', s:palette.green, s:palette.none)
call sonokai#highlight('ErrorMsg', s:palette.red, s:palette.none, 'bold,underline')
call sonokai#highlight('WarningMsg', s:palette.yellow, s:palette.none, 'bold')
call sonokai#highlight('ModeMsg', s:palette.fg, s:palette.none, 'bold')
call sonokai#highlight('MoreMsg', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('MatchParen', s:palette.none, s:palette.bg4)
call sonokai#highlight('NonText', s:palette.bg4, s:palette.none)
call sonokai#highlight('Whitespace', s:palette.bg4, s:palette.none)
call sonokai#highlight('SpecialKey', s:palette.bg4, s:palette.none)
call sonokai#highlight('Pmenu', s:palette.fg, s:palette.bg2)
call sonokai#highlight('PmenuSbar', s:palette.none, s:palette.bg2)
if s:configuration.menu_selection_background ==# 'blue'
  call sonokai#highlight('PmenuSel', s:palette.bg0, s:palette.bg_blue)
elseif s:configuration.menu_selection_background ==# 'green'
  call sonokai#highlight('PmenuSel', s:palette.bg0, s:palette.bg_green)
elseif s:configuration.menu_selection_background ==# 'red'
  call sonokai#highlight('PmenuSel', s:palette.bg0, s:palette.bg_red)
endif
highlight! link WildMenu PmenuSel
call sonokai#highlight('PmenuThumb', s:palette.none, s:palette.grey)
call sonokai#highlight('NormalFloat', s:palette.fg, s:palette.bg2)
call sonokai#highlight('Question', s:palette.yellow, s:palette.none)
call sonokai#highlight('SpellBad', s:palette.red, s:palette.none, 'undercurl', s:palette.red)
call sonokai#highlight('SpellCap', s:palette.yellow, s:palette.none, 'undercurl', s:palette.yellow)
call sonokai#highlight('SpellLocal', s:palette.blue, s:palette.none, 'undercurl', s:palette.blue)
call sonokai#highlight('SpellRare', s:palette.purple, s:palette.none, 'undercurl', s:palette.purple)
call sonokai#highlight('StatusLine', s:palette.fg, s:palette.bg3)
call sonokai#highlight('StatusLineTerm', s:palette.fg, s:palette.bg3)
call sonokai#highlight('StatusLineNC', s:palette.grey, s:palette.bg1)
call sonokai#highlight('StatusLineTermNC', s:palette.grey, s:palette.bg1)
call sonokai#highlight('TabLine', s:palette.fg, s:palette.bg4)
call sonokai#highlight('TabLineFill', s:palette.grey, s:palette.bg1)
call sonokai#highlight('TabLineSel', s:palette.bg0, s:palette.bg_red)
call sonokai#highlight('VertSplit', s:palette.black, s:palette.none)
call sonokai#highlight('Visual', s:palette.none, s:palette.bg3)
call sonokai#highlight('VisualNOS', s:palette.none, s:palette.bg3, 'underline')
call sonokai#highlight('QuickFixLine', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('Debug', s:palette.yellow, s:palette.none)
call sonokai#highlight('debugPC', s:palette.bg0, s:palette.green)
call sonokai#highlight('debugBreakpoint', s:palette.bg0, s:palette.red)
call sonokai#highlight('ToolbarButton', s:palette.bg0, s:palette.bg_blue)
if has('nvim')
  call sonokai#highlight('Substitute', s:palette.bg0, s:palette.yellow)
  highlight! link LspDiagnosticsFloatingError ErrorFloat
  highlight! link LspDiagnosticsFloatingWarning WarningFloat
  highlight! link LspDiagnosticsFloatingInformation InfoFloat
  highlight! link LspDiagnosticsFloatingHint HintFloat
  highlight! link LspDiagnosticsDefaultError ErrorText
  highlight! link LspDiagnosticsDefaultWarning WarningText
  highlight! link LspDiagnosticsDefaultInformation InfoText
  highlight! link LspDiagnosticsDefaultHint HintText
  highlight! link LspDiagnosticsVirtualTextError Grey
  highlight! link LspDiagnosticsVirtualTextWarning Grey
  highlight! link LspDiagnosticsVirtualTextInformation Grey
  highlight! link LspDiagnosticsVirtualTextHint Grey
  highlight! link LspDiagnosticsUnderlineError ErrorText
  highlight! link LspDiagnosticsUnderlineWarning WarningText
  highlight! link LspDiagnosticsUnderlineInformation InfoText
  highlight! link LspDiagnosticsUnderlineHint HintText
  highlight! link LspDiagnosticsSignError RedSign
  highlight! link LspDiagnosticsSignWarning YellowSign
  highlight! link LspDiagnosticsSignInformation BlueSign
  highlight! link LspDiagnosticsSignHint GreenSign
  highlight! link LspReferenceText CurrentWord
  highlight! link LspReferenceRead CurrentWord
  highlight! link LspReferenceWrite CurrentWord
  highlight! link TermCursor Cursor
  highlight! link healthError Red
  highlight! link healthSuccess Green
  highlight! link healthWarning Yellow
endif
" }}}
" Syntax: {{{
if s:configuration.enable_italic
  call sonokai#highlight('Type', s:palette.blue, s:palette.none, 'italic')
  call sonokai#highlight('Structure', s:palette.blue, s:palette.none, 'italic')
  call sonokai#highlight('StorageClass', s:palette.blue, s:palette.none, 'italic')
  call sonokai#highlight('Identifier', s:palette.orange, s:palette.none, 'italic')
  call sonokai#highlight('Constant', s:palette.orange, s:palette.none, 'italic')
else
  call sonokai#highlight('Type', s:palette.blue, s:palette.none)
  call sonokai#highlight('Structure', s:palette.blue, s:palette.none)
  call sonokai#highlight('StorageClass', s:palette.blue, s:palette.none)
  call sonokai#highlight('Identifier', s:palette.orange, s:palette.none)
  call sonokai#highlight('Constant', s:palette.orange, s:palette.none)
endif
call sonokai#highlight('PreProc', s:palette.red, s:palette.none)
call sonokai#highlight('PreCondit', s:palette.red, s:palette.none)
call sonokai#highlight('Include', s:palette.red, s:palette.none)
call sonokai#highlight('Keyword', s:palette.red, s:palette.none)
call sonokai#highlight('Define', s:palette.red, s:palette.none)
call sonokai#highlight('Typedef', s:palette.red, s:palette.none)
call sonokai#highlight('Exception', s:palette.red, s:palette.none)
call sonokai#highlight('Conditional', s:palette.red, s:palette.none)
call sonokai#highlight('Repeat', s:palette.red, s:palette.none)
call sonokai#highlight('Statement', s:palette.red, s:palette.none)
call sonokai#highlight('Macro', s:palette.purple, s:palette.none)
call sonokai#highlight('Error', s:palette.red, s:palette.none)
call sonokai#highlight('Label', s:palette.purple, s:palette.none)
call sonokai#highlight('Special', s:palette.purple, s:palette.none)
call sonokai#highlight('SpecialChar', s:palette.purple, s:palette.none)
call sonokai#highlight('Boolean', s:palette.purple, s:palette.none)
call sonokai#highlight('String', s:palette.yellow, s:palette.none)
call sonokai#highlight('Character', s:palette.yellow, s:palette.none)
call sonokai#highlight('Number', s:palette.purple, s:palette.none)
call sonokai#highlight('Float', s:palette.purple, s:palette.none)
call sonokai#highlight('Function', s:palette.green, s:palette.none)
call sonokai#highlight('Operator', s:palette.red, s:palette.none)
call sonokai#highlight('Title', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('Tag', s:palette.orange, s:palette.none)
call sonokai#highlight('Delimiter', s:palette.fg, s:palette.none)
if s:configuration.disable_italic_comment
  call sonokai#highlight('Comment', s:palette.grey, s:palette.none)
  call sonokai#highlight('SpecialComment', s:palette.grey, s:palette.none)
  call sonokai#highlight('Todo', s:palette.blue, s:palette.none)
else
  call sonokai#highlight('Comment', s:palette.grey, s:palette.none, 'italic')
  call sonokai#highlight('SpecialComment', s:palette.grey, s:palette.none, 'italic')
  call sonokai#highlight('Todo', s:palette.blue, s:palette.none, 'italic')
endif
call sonokai#highlight('Ignore', s:palette.grey, s:palette.none)
call sonokai#highlight('Underlined', s:palette.none, s:palette.none, 'underline')
" }}}
" Predefined Highlight Groups: {{{
call sonokai#highlight('Fg', s:palette.fg, s:palette.none)
call sonokai#highlight('Grey', s:palette.grey, s:palette.none)
call sonokai#highlight('Red', s:palette.red, s:palette.none)
call sonokai#highlight('Orange', s:palette.orange, s:palette.none)
call sonokai#highlight('Yellow', s:palette.yellow, s:palette.none)
call sonokai#highlight('Green', s:palette.green, s:palette.none)
call sonokai#highlight('Blue', s:palette.blue, s:palette.none)
call sonokai#highlight('Purple', s:palette.purple, s:palette.none)
if s:configuration.enable_italic
  call sonokai#highlight('RedItalic', s:palette.red, s:palette.none, 'italic')
  call sonokai#highlight('OrangeItalic', s:palette.orange, s:palette.none, 'italic')
  call sonokai#highlight('YellowItalic', s:palette.yellow, s:palette.none, 'italic')
  call sonokai#highlight('GreenItalic', s:palette.green, s:palette.none, 'italic')
  call sonokai#highlight('BlueItalic', s:palette.blue, s:palette.none, 'italic')
  call sonokai#highlight('PurpleItalic', s:palette.purple, s:palette.none, 'italic')
else
  call sonokai#highlight('RedItalic', s:palette.red, s:palette.none)
  call sonokai#highlight('OrangeItalic', s:palette.orange, s:palette.none)
  call sonokai#highlight('YellowItalic', s:palette.yellow, s:palette.none)
  call sonokai#highlight('GreenItalic', s:palette.green, s:palette.none)
  call sonokai#highlight('BlueItalic', s:palette.blue, s:palette.none)
  call sonokai#highlight('PurpleItalic', s:palette.purple, s:palette.none)
endif
if s:configuration.transparent_background || s:configuration.sign_column_background !=# 'default'
  call sonokai#highlight('RedSign', s:palette.red, s:palette.none)
  call sonokai#highlight('OrangeSign', s:palette.orange, s:palette.none)
  call sonokai#highlight('YellowSign', s:palette.yellow, s:palette.none)
  call sonokai#highlight('GreenSign', s:palette.green, s:palette.none)
  call sonokai#highlight('BlueSign', s:palette.blue, s:palette.none)
  call sonokai#highlight('PurpleSign', s:palette.purple, s:palette.none)
else
  call sonokai#highlight('RedSign', s:palette.red, s:palette.bg1)
  call sonokai#highlight('OrangeSign', s:palette.orange, s:palette.bg1)
  call sonokai#highlight('YellowSign', s:palette.yellow, s:palette.bg1)
  call sonokai#highlight('GreenSign', s:palette.green, s:palette.bg1)
  call sonokai#highlight('BlueSign', s:palette.blue, s:palette.bg1)
  call sonokai#highlight('PurpleSign', s:palette.purple, s:palette.bg1)
endif
if s:configuration.diagnostic_text_highlight
  call sonokai#highlight('ErrorText', s:palette.none, s:palette.diff_red, 'undercurl', s:palette.red)
  call sonokai#highlight('WarningText', s:palette.none, s:palette.diff_yellow, 'undercurl', s:palette.yellow)
  call sonokai#highlight('InfoText', s:palette.none, s:palette.diff_blue, 'undercurl', s:palette.blue)
  call sonokai#highlight('HintText', s:palette.none, s:palette.diff_green, 'undercurl', s:palette.green)
else
  call sonokai#highlight('ErrorText', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
  call sonokai#highlight('WarningText', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
  call sonokai#highlight('InfoText', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
  call sonokai#highlight('HintText', s:palette.none, s:palette.none, 'undercurl', s:palette.green)
endif
if s:configuration.diagnostic_line_highlight
  call sonokai#highlight('ErrorLine', s:palette.none, s:palette.diff_red)
  call sonokai#highlight('WarningLine', s:palette.none, s:palette.diff_yellow)
  call sonokai#highlight('InfoLine', s:palette.none, s:palette.diff_blue)
  call sonokai#highlight('HintLine', s:palette.none, s:palette.diff_green)
else
  highlight clear ErrorLine
  highlight clear WarningLine
  highlight clear InfoLine
  highlight clear HintLine
endif
call sonokai#highlight('ErrorFloat', s:palette.red, s:palette.bg2)
call sonokai#highlight('WarningFloat', s:palette.yellow, s:palette.bg2)
call sonokai#highlight('InfoFloat', s:palette.blue, s:palette.bg2)
call sonokai#highlight('HintFloat', s:palette.green, s:palette.bg2)
if &diff
  call sonokai#highlight('CurrentWord', s:palette.bg0, s:palette.green)
elseif s:configuration.current_word ==# 'grey background'
  call sonokai#highlight('CurrentWord', s:palette.none, s:palette.bg2)
else
  call sonokai#highlight('CurrentWord', s:palette.none, s:palette.none, s:configuration.current_word)
endif
" }}}
" }}}
" Terminal: {{{
if (has('termguicolors') && &termguicolors) || has('gui_running')
  " Definition
  let s:terminal = {
        \ 'black':    s:palette.black,
        \ 'red':      s:palette.red,
        \ 'yellow':   s:palette.yellow,
        \ 'green':    s:palette.green,
        \ 'cyan':     s:palette.orange,
        \ 'blue':     s:palette.blue,
        \ 'purple':   s:palette.purple,
        \ 'white':    s:palette.fg
        \ }
  " Implementation: {{{
  if !has('nvim')
    let g:terminal_ansi_colors = [s:terminal.black[0], s:terminal.red[0], s:terminal.green[0], s:terminal.yellow[0],
          \ s:terminal.blue[0], s:terminal.purple[0], s:terminal.cyan[0], s:terminal.white[0], s:terminal.black[0], s:terminal.red[0],
          \ s:terminal.green[0], s:terminal.yellow[0], s:terminal.blue[0], s:terminal.purple[0], s:terminal.cyan[0], s:terminal.white[0]]
  else
    let g:terminal_color_0 = s:terminal.black[0]
    let g:terminal_color_1 = s:terminal.red[0]
    let g:terminal_color_2 = s:terminal.green[0]
    let g:terminal_color_3 = s:terminal.yellow[0]
    let g:terminal_color_4 = s:terminal.blue[0]
    let g:terminal_color_5 = s:terminal.purple[0]
    let g:terminal_color_6 = s:terminal.cyan[0]
    let g:terminal_color_7 = s:terminal.white[0]
    let g:terminal_color_8 = s:terminal.black[0]
    let g:terminal_color_9 = s:terminal.red[0]
    let g:terminal_color_10 = s:terminal.green[0]
    let g:terminal_color_11 = s:terminal.yellow[0]
    let g:terminal_color_12 = s:terminal.blue[0]
    let g:terminal_color_13 = s:terminal.purple[0]
    let g:terminal_color_14 = s:terminal.cyan[0]
    let g:terminal_color_15 = s:terminal.white[0]
  endif
  " }}}
endif
" }}}
" Plugins: {{{
" nvim-treesitter/nvim-treesitter {{{
highlight! link TSAnnotation BlueItalic
highlight! link TSAttribute BlueItalic
highlight! link TSBoolean Purple
highlight! link TSCharacter Yellow
highlight! link TSComment Grey
highlight! link TSConditional Red
highlight! link TSConstBuiltin OrangeItalic
highlight! link TSConstMacro Orange
highlight! link TSConstant OrangeItalic
highlight! link TSConstructor Fg
highlight! link TSError ErrorText
highlight! link TSException Red
highlight! link TSField Green
highlight! link TSFloat Purple
highlight! link TSFuncBuiltin Green
highlight! link TSFuncMacro Green
highlight! link TSFunction Green
highlight! link TSInclude BlueItalic
highlight! link TSKeyword Red
highlight! link TSKeywordFunction Red
highlight! link TSLabel Red
highlight! link TSMethod Green
highlight! link TSNamespace Purple
highlight! link TSNumber Purple
highlight! link TSOperator Red
highlight! link TSParameter OrangeItalic
highlight! link TSParameterReference OrangeItalic
highlight! link TSProperty Green
highlight! link TSPunctBracket Fg
highlight! link TSPunctDelimiter Grey
highlight! link TSPunctSpecial Fg
highlight! link TSRepeat Red
highlight! link TSString Yellow
highlight! link TSStringEscape Green
highlight! link TSStringRegex Green
highlight! link TSStructure BlueItalic
highlight! link TSTag BlueItalic
highlight! link TSTagDelimiter Red
highlight! link TSText Green
call sonokai#highlight('TSEmphasis', s:palette.none, s:palette.none, 'bold')
call sonokai#highlight('TSUnderline', s:palette.none, s:palette.none, 'underline')
highlight! link TSType BlueItalic
highlight! link TSTypeBuiltin BlueItalic
highlight! link TSURI markdownUrl
highlight! link TSVariable Fg
highlight! link TSVariableBuiltin OrangeItalic
" }}}
" neoclide/coc.nvim {{{
call sonokai#highlight('CocHoverRange', s:palette.none, s:palette.none, 'bold,underline')
highlight! link CocErrorFloat ErrorFloat
highlight! link CocWarningFloat WarningFloat
highlight! link CocInfoFloat InfoFloat
highlight! link CocHintFloat HintFloat
highlight! link CocErrorHighlight ErrorText
highlight! link CocWarningHighlight WarningText
highlight! link CocInfoHighlight InfoText
highlight! link CocHintHighlight HintText
highlight! link CocHighlightText CurrentWord
highlight! link CocErrorSign RedSign
highlight! link CocWarningSign YellowSign
highlight! link CocInfoSign BlueSign
highlight! link CocHintSign GreenSign
highlight! link CocWarningVirtualText Grey
highlight! link CocErrorVirtualText Grey
highlight! link CocInfoVirtualText Grey
highlight! link CocHintVirtualText Grey
highlight! link CocErrorLine ErrorLine
highlight! link CocWarningLine WarningLine
highlight! link CocInfoLine InfoLine
highlight! link CocHintLine HintLine
highlight! link CocCodeLens Grey
highlight! link HighlightedyankRegion Visual
highlight! link CocGitAddedSign GreenSign
highlight! link CocGitChangeRemovedSign PurpleSign
highlight! link CocGitChangedSign BlueSign
highlight! link CocGitRemovedSign RedSign
highlight! link CocGitTopRemovedSign RedSign
highlight! link CocExplorerBufferRoot Red
highlight! link CocExplorerBufferExpandIcon Blue
highlight! link CocExplorerBufferBufnr Yellow
highlight! link CocExplorerBufferModified Yellow
highlight! link CocExplorerBufferReadonly Red
highlight! link CocExplorerBufferBufname Grey
highlight! link CocExplorerBufferFullpath Grey
highlight! link CocExplorerFileRoot Red
highlight! link CocExplorerFileRootName Green
highlight! link CocExplorerFileExpandIcon Blue
highlight! link CocExplorerFileFullpath Grey
highlight! link CocExplorerFileDirectory Green
highlight! link CocExplorerFileGitStaged Purple
highlight! link CocExplorerFileGitUnstaged Yellow
highlight! link CocExplorerFileGitRootStaged Purple
highlight! link CocExplorerFileGitRootUnstaged Yellow
highlight! link CocExplorerGitPathChange Fg
highlight! link CocExplorerGitContentChange Fg
highlight! link CocExplorerGitRenamed Purple
highlight! link CocExplorerGitCopied Fg
highlight! link CocExplorerGitAdded Green
highlight! link CocExplorerGitUntracked Blue
highlight! link CocExplorerGitUnmodified Fg
highlight! link CocExplorerGitUnmerged Orange
highlight! link CocExplorerGitMixed Fg
highlight! link CocExplorerGitModified Yellow
highlight! link CocExplorerGitDeleted Red
highlight! link CocExplorerGitIgnored Grey
highlight! link CocExplorerFileSize Blue
highlight! link CocExplorerTimeAccessed Purple
highlight! link CocExplorerTimeCreated Purple
highlight! link CocExplorerTimeModified Purple
highlight! link CocExplorerFileRootName Orange
highlight! link CocExplorerBufferNameVisible Green
highlight! link CocExplorerIndentLine Conceal
highlight! link CocExplorerHelpDescription Grey
highlight! link CocExplorerHelpHint Grey
" }}}
" prabirshrestha/vim-lsp {{{
highlight! link LspErrorVirtual Grey
highlight! link LspWarningVirtual Grey
highlight! link LspInformationVirtual Grey
highlight! link LspHintVirtual Grey
highlight! link LspErrorHighlight ErrorText
highlight! link LspWarningHighlight WarningText
highlight! link LspInformationHighlight InfoText
highlight! link LspHintHighlight HintText
highlight! link lspReference CurrentWord
" }}}
" ycm-core/YouCompleteMe {{{
highlight! link YcmErrorSign RedSign
highlight! link YcmWarningSign YellowSign
highlight! link YcmErrorLine ErrorLine
highlight! link YcmWarningLine WarningLine
highlight! link YcmErrorSection ErrorText
highlight! link YcmWarningSection WarningText
" }}}
" dense-analysis/ale {{{
highlight! link ALEError ErrorText
highlight! link ALEWarning WarningText
highlight! link ALEInfo InfoText
highlight! link ALEErrorSign RedSign
highlight! link ALEWarningSign YellowSign
highlight! link ALEInfoSign BlueSign
highlight! link ALEErrorLine ErrorLine
highlight! link ALEWarningLine WarningLine
highlight! link ALEInfoLine InfoLine
highlight! link ALEVirtualTextError Grey
highlight! link ALEVirtualTextWarning Grey
highlight! link ALEVirtualTextInfo Grey
highlight! link ALEVirtualTextStyleError Grey
highlight! link ALEVirtualTextStyleWarning Grey
" }}}
" neomake/neomake {{{
highlight! link NeomakeError ErrorText
highlight! link NeomakeWarning WarningText
highlight! link NeomakeInfo InfoText
highlight! link NeomakeMessage HintText
highlight! link NeomakeErrorSign RedSign
highlight! link NeomakeWarningSign YellowSign
highlight! link NeomakeInfoSign BlueSign
highlight! link NeomakeMessageSign GreenSign
highlight! link NeomakeVirtualtextError Grey
highlight! link NeomakeVirtualtextWarning Grey
highlight! link NeomakeVirtualtextInfo Grey
highlight! link NeomakeVirtualtextMessag Grey
" }}}
" vim-syntastic/syntastic {{{
highlight! link SyntasticError ErrorText
highlight! link SyntasticWarning WarningText
highlight! link SyntasticErrorSign RedSign
highlight! link SyntasticWarningSign YellowSign
highlight! link SyntasticErrorLine ErrorLine
highlight! link SyntasticWarningLine WarningLine
" }}}
" Yggdroot/LeaderF{{{
if !exists('g:Lf_StlColorscheme')
  let g:Lf_StlColorscheme = 'one'
endif
call sonokai#highlight('Lf_hl_match', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('Lf_hl_match0', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('Lf_hl_match1', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('Lf_hl_match2', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('Lf_hl_match3', s:palette.yellow, s:palette.none, 'bold')
call sonokai#highlight('Lf_hl_match4', s:palette.purple, s:palette.none, 'bold')
call sonokai#highlight('Lf_hl_matchRefine', s:palette.yellow, s:palette.none, 'bold')
highlight! link Lf_hl_cursorline Fg
highlight! link Lf_hl_selection DiffAdd
highlight! link Lf_hl_rgHighlight Visual
highlight! link Lf_hl_gtagsHighlight Visual
" }}}
" junegunn/fzf.vim {{{
let g:fzf_colors = {
      \ 'fg': ['fg', 'Normal'],
      \ 'bg': ['bg', 'Normal'],
      \ 'hl': ['fg', 'Green'],
      \ 'fg+': ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+': ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+': ['fg', 'Green'],
      \ 'info': ['fg', 'Yellow'],
      \ 'prompt': ['fg', 'Red'],
      \ 'pointer': ['fg', 'Blue'],
      \ 'marker': ['fg', 'Blue'],
      \ 'spinner': ['fg', 'Yellow'],
      \ 'header': ['fg', 'Blue']
      \ }
" }}}
" Shougo/denite.nvim{{{
call sonokai#highlight('deniteMatchedChar', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('deniteMatchedRange', s:palette.green, s:palette.none, 'bold,underline')
call sonokai#highlight('deniteInput', s:palette.green, s:palette.bg1, 'bold')
call sonokai#highlight('deniteStatusLineNumber', s:palette.purple, s:palette.bg1)
call sonokai#highlight('deniteStatusLinePath', s:palette.fg, s:palette.bg1)
highlight! link deniteSelectedLine Green
" }}}
" kien/ctrlp.vim{{{
call sonokai#highlight('CtrlPMatch', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('CtrlPPrtBase', s:palette.grey, s:palette.none)
call sonokai#highlight('CtrlPLinePre', s:palette.grey, s:palette.none)
call sonokai#highlight('CtrlPMode1', s:palette.blue, s:palette.bg1, 'bold')
call sonokai#highlight('CtrlPMode2', s:palette.bg1, s:palette.blue, 'bold')
call sonokai#highlight('CtrlPStats', s:palette.grey, s:palette.bg1, 'bold')
highlight! link CtrlPNoEntries Red
highlight! link CtrlPPrtCursor Blue
" }}}
" airblade/vim-gitgutter {{{
highlight! link GitGutterAdd GreenSign
highlight! link GitGutterChange BlueSign
highlight! link GitGutterDelete RedSign
highlight! link GitGutterChangeDelete PurpleSign
" }}}
" mhinz/vim-signify {{{
highlight! link SignifySignAdd GreenSign
highlight! link SignifySignChange BlueSign
highlight! link SignifySignDelete RedSign
highlight! link SignifySignChangeDelete PurpleSign
" }}}
" andymass/vim-matchup {{{
call sonokai#highlight('MatchParenCur', s:palette.none, s:palette.none, 'bold')
call sonokai#highlight('MatchWord', s:palette.none, s:palette.none, 'underline')
call sonokai#highlight('MatchWordCur', s:palette.none, s:palette.none, 'underline')
" }}}
" easymotion/vim-easymotion {{{
highlight! link EasyMotionTarget Search
highlight! link EasyMotionShade Grey
" }}}
" justinmk/vim-sneak {{{
call sonokai#highlight('SneakLabelMask', s:palette.bg_green, s:palette.bg_green)
highlight! link Sneak Search
highlight! link SneakLabel Search
highlight! link SneakScope DiffText
" }}}
" terryma/vim-multiple-cursors {{{
highlight! link multiple_cursors_cursor Cursor
highlight! link multiple_cursors_visual Visual
" }}}
" mg979/vim-visual-multi {{{
let g:VM_Mono_hl = 'Cursor'
let g:VM_Extend_hl = 'Visual'
let g:VM_Cursor_hl = 'Cursor'
let g:VM_Insert_hl = 'Cursor'
" }}}
" dominikduda/vim_current_word {{{
highlight! link CurrentWord CurrentWord
highlight! link CurrentWordTwins CurrentWord
" }}}
" RRethy/vim-illuminate {{{
highlight! link illuminatedWord CurrentWord
" }}}
" itchyny/vim-cursorword {{{
highlight! link CursorWord0 CurrentWord
highlight! link CursorWord1 CurrentWord
" }}}
" Yggdroot/indentLine {{{
let g:indentLine_color_gui = s:palette.grey[0]
let g:indentLine_color_term = s:palette.grey[1]
" }}}
" nathanaelkane/vim-indent-guides {{{
if get(g:, 'indent_guides_auto_colors', 1) == 0
  call sonokai#highlight('IndentGuidesOdd', s:palette.bg0, s:palette.bg1)
  call sonokai#highlight('IndentGuidesEven', s:palette.bg0, s:palette.bg2)
endif
" }}}
" kshenoy/vim-signature {{{
highlight! link SignatureMarkText BlueSign
highlight! link SignatureMarkerText PurpleSign
" }}}
" ap/vim-buftabline {{{
highlight! link BufTabLineCurrent TabLineSel
highlight! link BufTabLineActive TabLine
highlight! link BufTabLineHidden TabLineFill
highlight! link BufTabLineFill TabLineFill
" }}}
" liuchengxu/vim-which-key {{{
highlight! link WhichKey Red
highlight! link WhichKeySeperator Green
highlight! link WhichKeyGroup Orange
highlight! link WhichKeyDesc Blue
" }}}
" unblevable/quick-scope {{{
call sonokai#highlight('QuickScopePrimary', s:palette.green, s:palette.none, 'underline')
call sonokai#highlight('QuickScopeSecondary', s:palette.blue, s:palette.none, 'underline')
" }}}
" APZelos/blamer.nvim {{{
highlight! link Blamer Grey
" }}}
" cohama/agit.vim {{{
highlight! link agitTree Grey
highlight! link agitDate Green
highlight! link agitRemote Red
highlight! link agitHead Blue
highlight! link agitRef Orange
highlight! link agitTag Blue
highlight! link agitStatFile Blue
highlight! link agitStatRemoved Red
highlight! link agitStatAdded Green
highlight! link agitStatMessage Orange
highlight! link agitDiffRemove Red
highlight! link agitDiffAdd Green
highlight! link agitDiffHeader Blue
highlight! link agitAuthor Yellow
" }}}
" netrw {{{
" https://www.vim.org/scripts/script.php?script_id=1075
highlight! link netrwDir Green
highlight! link netrwClassify Green
highlight! link netrwLink Grey
highlight! link netrwSymLink Fg
highlight! link netrwExe Red
highlight! link netrwComment Grey
highlight! link netrwList Yellow
highlight! link netrwHelpCmd Blue
highlight! link netrwCmdSep Grey
highlight! link netrwVersion Purple
" }}}
" }}}
" Extended File Types: {{{
" Note: To ensure that the `s:last_modified` variable is always up to date, you need to copy `.githooks/pre-commit` to `.git/hooks/pre-commit`.
" Generate the `after/ftplugin` directory based on the comment tags in this file.
" For example, the content between `ft_begin: sh/zsh` and `ft_end` will be placed in `after/ftplugin/sh/sonokai.vim` and `after/ftplugin/zsh/sonokai.vim`.
if sonokai#ft_exists(s:path) " If the ftplugin exists.
  if s:configuration.better_performance
    if !sonokai#ft_newest(s:path, s:last_modified) " Regenerate if it's not up to date.
      call sonokai#ft_clean(s:path, 0)
      call sonokai#ft_gen(s:path, s:last_modified, 'update')
    endif
    finish
  else
    call sonokai#ft_clean(s:path, 1)
  endif
else
  if s:configuration.better_performance
    call sonokai#ft_gen(s:path, s:last_modified, 'generate')
    finish
  endif
endif
" ft_begin: vim-plug {{{
" https://github.com/junegunn/vim-plug
call sonokai#highlight('plug1', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('plugNumber', s:palette.yellow, s:palette.none, 'bold')
highlight! link plug2 Blue
highlight! link plugBracket Blue
highlight! link plugName Green
highlight! link plugDash Red
highlight! link plugNotLoaded Grey
highlight! link plugH2 Purple
highlight! link plugMessage Purple
highlight! link plugError Red
highlight! link plugRelDate Grey
highlight! link plugStar Purple
highlight! link plugUpdate Blue
highlight! link plugDeleted Grey
highlight! link plugEdge Purple
" ft_end }}}
" ft_begin: tagbar {{{
" https://github.com/majutsushi/tagbar
highlight! link TagbarFoldIcon Blue
highlight! link TagbarSignature Green
highlight! link TagbarKind Red
highlight! link TagbarScope Orange
highlight! link TagbarNestedKind Blue
highlight! link TagbarVisibilityPrivate Red
highlight! link TagbarVisibilityPublic Blue
" ft_end }}}
" ft_begin: vista/vista_kind/vista_markdown {{{
" https://github.com/liuchengxu/vista.vim
highlight! link VistaBracket Grey
highlight! link VistaChildrenNr Orange
highlight! link VistaScope Red
highlight! link VistaTag Green
highlight! link VistaPrefix Grey
highlight! link VistaIcon Blue
highlight! link VistaScopeKind Yellow
highlight! link VistaColon Grey
highlight! link VistaLineNr Grey
highlight! link VistaHeadNr Fg
highlight! link VistaPublic Green
highlight! link VistaProtected Yellow
highlight! link VistaPrivate Red
" ft_end }}}
" ft_begin: nerdtree {{{
" https://github.com/preservim/nerdtree
highlight! link NERDTreeDir Green
highlight! link NERDTreeDirSlash Green
highlight! link NERDTreeOpenable Blue
highlight! link NERDTreeClosable Blue
highlight! link NERDTreeFile Fg
highlight! link NERDTreeExecFile Red
highlight! link NERDTreeUp Grey
highlight! link NERDTreeCWD Purple
highlight! link NERDTreeHelp Grey
highlight! link NERDTreeToggleOn Green
highlight! link NERDTreeToggleOff Red
highlight! link NERDTreeFlags Blue
highlight! link NERDTreeLinkFile Grey
highlight! link NERDTreeLinkTarget Green
" ft_end }}}
" ft_begin: dirvish {{{
" https://github.com/justinmk/vim-dirvish
highlight! link DirvishPathTail Blue
highlight! link DirvishArg Yellow
" ft_end }}}
" ft_begin: startify/quickmenu {{{
" https://github.com/mhinz/vim-startify
" https://github.com/skywind3000/quickmenu.vim
highlight! link StartifyBracket Grey
highlight! link StartifyFile Green
highlight! link StartifyNumber Orange
highlight! link StartifyPath Grey
highlight! link StartifySlash Grey
highlight! link StartifySection Blue
highlight! link StartifyHeader Red
highlight! link StartifySpecial Grey
" ft_end }}}
" ft_begin: quickmenu {{{
" https://github.com/skywind3000/quickmenu.vim
highlight! link QuickmenuOption Green
highlight! link QuickmenuNumber Orange
highlight! link QuickmenuBracket Grey
highlight! link QuickmenuHelp Blue
highlight! link QuickmenuSpecial Grey
highlight! link QuickmenuHeader Purple
" ft_end }}}
" ft_begin: undotree {{{
" https://github.com/mbbill/undotree
call sonokai#highlight('UndotreeSavedBig', s:palette.red, s:palette.none, 'bold')
highlight! link UndotreeNode Blue
highlight! link UndotreeNodeCurrent Purple
highlight! link UndotreeSeq Green
highlight! link UndotreeCurrent Blue
highlight! link UndotreeNext Yellow
highlight! link UndotreeTimeStamp Grey
highlight! link UndotreeHead Purple
highlight! link UndotreeBranch Blue
highlight! link UndotreeSavedSmall Red
" ft_end }}}
" ft_begin: markdown {{{
" builtin: {{{
call sonokai#highlight('markdownH1', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('markdownH2', s:palette.orange, s:palette.none, 'bold')
call sonokai#highlight('markdownH3', s:palette.yellow, s:palette.none, 'bold')
call sonokai#highlight('markdownH4', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('markdownH5', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('markdownH6', s:palette.purple, s:palette.none, 'bold')
call sonokai#highlight('markdownUrl', s:palette.blue, s:palette.none, 'underline')
call sonokai#highlight('markdownItalic', s:palette.none, s:palette.none, 'italic')
call sonokai#highlight('markdownBold', s:palette.none, s:palette.none, 'bold')
call sonokai#highlight('markdownItalicDelimiter', s:palette.grey, s:palette.none, 'italic')
highlight! link markdownCode Green
highlight! link markdownCodeBlock Green
highlight! link markdownCodeDelimiter Green
highlight! link markdownBlockquote Grey
highlight! link markdownListMarker Red
highlight! link markdownOrderedListMarker Red
highlight! link markdownRule Purple
highlight! link markdownHeadingRule Grey
highlight! link markdownUrlDelimiter Grey
highlight! link markdownLinkDelimiter Grey
highlight! link markdownLinkTextDelimiter Grey
highlight! link markdownHeadingDelimiter Grey
highlight! link markdownLinkText Red
highlight! link markdownUrlTitleDelimiter Green
highlight! link markdownIdDeclaration markdownLinkText
highlight! link markdownBoldDelimiter Grey
highlight! link markdownId Yellow
" }}}
" vim-markdown: https://github.com/gabrielelana/vim-markdown{{{
call sonokai#highlight('mkdURL', s:palette.blue, s:palette.none, 'underline')
call sonokai#highlight('mkdInlineURL', s:palette.blue, s:palette.none, 'underline')
call sonokai#highlight('mkdItalic', s:palette.grey, s:palette.none, 'italic')
highlight! link mkdCodeDelimiter Green
highlight! link mkdBold Grey
highlight! link mkdLink Red
highlight! link mkdHeading Grey
highlight! link mkdListItem Red
highlight! link mkdRule Purple
highlight! link mkdDelimiter Grey
highlight! link mkdId Yellow
" }}}
" ft_end }}}
" ft_begin: rst {{{
" builtin: https://github.com/marshallward/vim-restructuredtext{{{
call sonokai#highlight('rstStandaloneHyperlink', s:palette.purple, s:palette.none, 'underline')
call sonokai#highlight('rstEmphasis', s:palette.none, s:palette.none, 'italic')
call sonokai#highlight('rstStrongEmphasis', s:palette.none, s:palette.none, 'bold')
call sonokai#highlight('rstStandaloneHyperlink', s:palette.blue, s:palette.none, 'underline')
call sonokai#highlight('rstHyperlinkTarget', s:palette.blue, s:palette.none, 'underline')
highlight! link rstSubstitutionReference Blue
highlight! link rstInterpretedTextOrHyperlinkReference Green
highlight! link rstTableLines Grey
highlight! link rstInlineLiteral Green
highlight! link rstLiteralBlock Green
highlight! link rstQuotedLiteralBlock Green
" }}}
" ft_end }}}
" ft_begin: tex {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_TEX{{{
highlight! link texStatement BlueItalic
highlight! link texOnlyMath Grey
highlight! link texDefName Yellow
highlight! link texNewCmd Orange
highlight! link texCmdName Blue
highlight! link texBeginEnd Red
highlight! link texBeginEndName Green
highlight! link texDocType RedItalic
highlight! link texDocTypeArgs Orange
highlight! link texInputFile Green
" }}}
" vimtex: https://github.com/lervag/vimtex {{{
highlight! link texFileArg Green
highlight! link texCmd BlueItalic
highlight! link texCmdPackage BlueItalic
highlight! link texCmdDef Red
highlight! link texDefArgName Yellow
highlight! link texCmdNewcmd Red
highlight! link texCmdClass Red
highlight! link texCmdTitle Red
highlight! link texCmdAuthor Red
highlight! link texCmdEnv Red
highlight! link texCmdPart Red
highlight! link texEnvArgName Green
" }}}
" ft_end }}}
" ft_begin: html/markdown/javascriptreact/typescriptreact {{{
" builtin: https://notabug.org/jorgesumle/vim-html-syntax{{{
call sonokai#highlight('htmlH1', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('htmlH2', s:palette.orange, s:palette.none, 'bold')
call sonokai#highlight('htmlH3', s:palette.yellow, s:palette.none, 'bold')
call sonokai#highlight('htmlH4', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('htmlH5', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('htmlH6', s:palette.purple, s:palette.none, 'bold')
call sonokai#highlight('htmlLink', s:palette.none, s:palette.none, 'underline')
call sonokai#highlight('htmlBold', s:palette.none, s:palette.none, 'bold')
call sonokai#highlight('htmlBoldUnderline', s:palette.none, s:palette.none, 'bold,underline')
call sonokai#highlight('htmlBoldItalic', s:palette.none, s:palette.none, 'bold,italic')
call sonokai#highlight('htmlBoldUnderlineItalic', s:palette.none, s:palette.none, 'bold,underline,italic')
call sonokai#highlight('htmlUnderline', s:palette.none, s:palette.none, 'underline')
call sonokai#highlight('htmlUnderlineItalic', s:palette.none, s:palette.none, 'underline,italic')
call sonokai#highlight('htmlItalic', s:palette.none, s:palette.none, 'italic')
highlight! link htmlTag Green
highlight! link htmlEndTag Blue
highlight! link htmlTagN RedItalic
highlight! link htmlTagName RedItalic
highlight! link htmlArg Blue
highlight! link htmlScriptTag Purple
highlight! link htmlSpecialTagName RedItalic
highlight! link htmlString Green
" }}}
" ft_end }}}
" ft_begin: htmldjango {{{
" builtin: https://github.com/vim/vim/blob/master/runtime/syntax/htmldjango.vim{{{
highlight! link djangoTagBlock Yellow
" }}}
" ft_end }}}
" ft_begin: xml {{{
" builtin: https://github.com/chrisbra/vim-xml-ftplugin{{{
highlight! link xmlTag Green
highlight! link xmlEndTag Blue
highlight! link xmlTagName RedItalic
highlight! link xmlEqual Orange
highlight! link xmlAttrib Blue
highlight! link xmlEntity Red
highlight! link xmlEntityPunct Red
highlight! link xmlDocTypeDecl Grey
highlight! link xmlDocTypeKeyword RedItalic
highlight! link xmlCdataStart Grey
highlight! link xmlCdataCdata Purple
highlight! link xmlString Green
" }}}
" ft_end }}}
" ft_begin: css/scss/sass/less {{{
" builtin: https://github.com/JulesWang/css.vim{{{
highlight! link cssStringQ Green
highlight! link cssStringQQ Green
highlight! link cssAttrComma Grey
highlight! link cssBraces Grey
highlight! link cssTagName Purple
highlight! link cssClassNameDot Grey
highlight! link cssClassName Red
highlight! link cssFunctionName Orange
highlight! link cssAttr Green
highlight! link cssCommonAttr Green
highlight! link cssProp Blue
highlight! link cssPseudoClassId Yellow
highlight! link cssPseudoClassFn Green
highlight! link cssPseudoClass Yellow
highlight! link cssImportant Red
highlight! link cssSelectorOp Orange
highlight! link cssSelectorOp2 Orange
highlight! link cssColor Green
highlight! link cssUnitDecorators Green
highlight! link cssValueLength Green
highlight! link cssValueInteger Green
highlight! link cssValueNumber Green
highlight! link cssValueAngle Green
highlight! link cssValueTime Green
highlight! link cssValueFrequency Green
highlight! link cssVendor Grey
highlight! link cssNoise Grey
" }}}
" ft_end }}}
" ft_begin: scss {{{
" scss-syntax: https://github.com/cakebaker/scss-syntax.vim{{{
highlight! link scssMixinName Orange
highlight! link scssSelectorChar Grey
highlight! link scssSelectorName Red
highlight! link scssInterpolationDelimiter Yellow
highlight! link scssVariableValue Green
highlight! link scssNull Purple
highlight! link scssBoolean Purple
highlight! link scssVariableAssignment Grey
highlight! link scssAttribute Green
highlight! link scssFunctionName Orange
highlight! link scssVariable Fg
highlight! link scssAmpersand Purple
" }}}
" ft_end }}}
" ft_begin: less {{{
" vim-less: https://github.com/groenewege/vim-less{{{
highlight! link lessMixinChar Grey
highlight! link lessClass Red
highlight! link lessFunction Orange
" }}}
" ft_end }}}
" ft_begin: javascript/javascriptreact {{{
" builtin: http://www.fleiner.com/vim/syntax/javascript.vim{{{
highlight! link javaScriptNull OrangeItalic
highlight! link javaScriptIdentifier BlueItalic
highlight! link javaScriptParens Fg
highlight! link javaScriptBraces Fg
highlight! link javaScriptNumber Purple
highlight! link javaScriptLabel Red
highlight! link javaScriptGlobal BlueItalic
highlight! link javaScriptMessage BlueItalic
" }}}
" vim-javascript: https://github.com/pangloss/vim-javascript{{{
highlight! link jsNoise Fg
highlight! link Noise Fg
highlight! link jsParens Fg
highlight! link jsBrackets Fg
highlight! link jsObjectBraces Fg
highlight! link jsThis BlueItalic
highlight! link jsUndefined OrangeItalic
highlight! link jsNull OrangeItalic
highlight! link jsNan OrangeItalic
highlight! link jsSuper OrangeItalic
highlight! link jsPrototype OrangeItalic
highlight! link jsFunction Red
highlight! link jsGlobalNodeObjects BlueItalic
highlight! link jsGlobalObjects BlueItalic
highlight! link jsArrowFunction Red
highlight! link jsArrowFuncArgs Fg
highlight! link jsFuncArgs Fg
highlight! link jsObjectProp Fg
highlight! link jsVariableDef Fg
highlight! link jsObjectKey Fg
highlight! link jsParen Fg
highlight! link jsParenIfElse Fg
highlight! link jsParenRepeat Fg
highlight! link jsParenSwitch Fg
highlight! link jsParenCatch Fg
highlight! link jsBracket Fg
highlight! link jsObjectValue Fg
highlight! link jsDestructuringBlock Fg
highlight! link jsBlockLabel Purple
highlight! link jsFunctionKey Green
highlight! link jsClassDefinition BlueItalic
highlight! link jsDot Grey
highlight! link jsSpreadExpression Purple
highlight! link jsSpreadOperator Green
highlight! link jsModuleKeyword BlueItalic
highlight! link jsTemplateExpression Purple
highlight! link jsTemplateBraces Purple
highlight! link jsClassMethodType BlueItalic
highlight! link jsExceptions BlueItalic
" }}}
" yajs: https://github.com/othree/yajs.vim{{{
highlight! link javascriptOpSymbol Red
highlight! link javascriptOpSymbols Red
highlight! link javascriptIdentifierName Fg
highlight! link javascriptVariable BlueItalic
highlight! link javascriptObjectLabel Fg
highlight! link javascriptPropertyNameString Fg
highlight! link javascriptFuncArg Fg
highlight! link javascriptObjectLiteral Green
highlight! link javascriptIdentifier OrangeItalic
highlight! link javascriptArrowFunc Red
highlight! link javascriptTemplate Purple
highlight! link javascriptTemplateSubstitution Purple
highlight! link javascriptTemplateSB Purple
highlight! link javascriptNodeGlobal BlueItalic
highlight! link javascriptDocTags RedItalic
highlight! link javascriptDocNotation Blue
highlight! link javascriptClassSuper OrangeItalic
highlight! link javascriptClassName BlueItalic
highlight! link javascriptClassSuperName BlueItalic
highlight! link javascriptOperator Red
highlight! link javascriptBrackets Fg
highlight! link javascriptBraces Fg
highlight! link javascriptLabel Purple
highlight! link javascriptEndColons Grey
highlight! link javascriptObjectLabelColon Grey
highlight! link javascriptDotNotation Grey
highlight! link javascriptGlobalArrayDot Grey
highlight! link javascriptGlobalBigIntDot Grey
highlight! link javascriptGlobalDateDot Grey
highlight! link javascriptGlobalJSONDot Grey
highlight! link javascriptGlobalMathDot Grey
highlight! link javascriptGlobalNumberDot Grey
highlight! link javascriptGlobalObjectDot Grey
highlight! link javascriptGlobalPromiseDot Grey
highlight! link javascriptGlobalRegExpDot Grey
highlight! link javascriptGlobalStringDot Grey
highlight! link javascriptGlobalSymbolDot Grey
highlight! link javascriptGlobalURLDot Grey
highlight! link javascriptMethod Green
highlight! link javascriptMethodName Green
highlight! link javascriptObjectMethodName Green
highlight! link javascriptGlobalMethod Green
highlight! link javascriptDOMStorageMethod Green
highlight! link javascriptFileMethod Green
highlight! link javascriptFileReaderMethod Green
highlight! link javascriptFileListMethod Green
highlight! link javascriptBlobMethod Green
highlight! link javascriptURLStaticMethod Green
highlight! link javascriptNumberStaticMethod Green
highlight! link javascriptNumberMethod Green
highlight! link javascriptDOMNodeMethod Green
highlight! link javascriptES6BigIntStaticMethod Green
highlight! link javascriptBOMWindowMethod Green
highlight! link javascriptHeadersMethod Green
highlight! link javascriptRequestMethod Green
highlight! link javascriptResponseMethod Green
highlight! link javascriptES6SetMethod Green
highlight! link javascriptReflectMethod Green
highlight! link javascriptPaymentMethod Green
highlight! link javascriptPaymentResponseMethod Green
highlight! link javascriptTypedArrayStaticMethod Green
highlight! link javascriptGeolocationMethod Green
highlight! link javascriptES6MapMethod Green
highlight! link javascriptServiceWorkerMethod Green
highlight! link javascriptCacheMethod Green
highlight! link javascriptFunctionMethod Green
highlight! link javascriptXHRMethod Green
highlight! link javascriptBOMNavigatorMethod Green
highlight! link javascriptServiceWorkerMethod Green
highlight! link javascriptDOMEventTargetMethod Green
highlight! link javascriptDOMEventMethod Green
highlight! link javascriptIntlMethod Green
highlight! link javascriptDOMDocMethod Green
highlight! link javascriptStringStaticMethod Green
highlight! link javascriptStringMethod Green
highlight! link javascriptSymbolStaticMethod Green
highlight! link javascriptRegExpMethod Green
highlight! link javascriptObjectStaticMethod Green
highlight! link javascriptObjectMethod Green
highlight! link javascriptBOMLocationMethod Green
highlight! link javascriptJSONStaticMethod Green
highlight! link javascriptGeneratorMethod Green
highlight! link javascriptEncodingMethod Green
highlight! link javascriptPromiseStaticMethod Green
highlight! link javascriptPromiseMethod Green
highlight! link javascriptBOMHistoryMethod Green
highlight! link javascriptDOMFormMethod Green
highlight! link javascriptClipboardMethod Green
highlight! link javascriptTypedArrayStaticMethod Green
highlight! link javascriptBroadcastMethod Green
highlight! link javascriptDateStaticMethod Green
highlight! link javascriptDateMethod Green
highlight! link javascriptConsoleMethod Green
highlight! link javascriptArrayStaticMethod Green
highlight! link javascriptArrayMethod Green
highlight! link javascriptMathStaticMethod Green
highlight! link javascriptSubtleCryptoMethod Green
highlight! link javascriptCryptoMethod Green
highlight! link javascriptProp Fg
highlight! link javascriptBOMWindowProp Fg
highlight! link javascriptDOMStorageProp Fg
highlight! link javascriptFileReaderProp Fg
highlight! link javascriptURLUtilsProp Fg
highlight! link javascriptNumberStaticProp Fg
highlight! link javascriptDOMNodeProp Fg
highlight! link javascriptRequestProp Fg
highlight! link javascriptResponseProp Fg
highlight! link javascriptES6SetProp Fg
highlight! link javascriptPaymentProp Fg
highlight! link javascriptPaymentResponseProp Fg
highlight! link javascriptPaymentAddressProp Fg
highlight! link javascriptPaymentShippingOptionProp Fg
highlight! link javascriptTypedArrayStaticProp Fg
highlight! link javascriptServiceWorkerProp Fg
highlight! link javascriptES6MapProp Fg
highlight! link javascriptRegExpStaticProp Fg
highlight! link javascriptRegExpProp Fg
highlight! link javascriptXHRProp Fg
highlight! link javascriptBOMNavigatorProp Green
highlight! link javascriptDOMEventProp Fg
highlight! link javascriptBOMNetworkProp Fg
highlight! link javascriptDOMDocProp Fg
highlight! link javascriptSymbolStaticProp Fg
highlight! link javascriptSymbolProp Fg
highlight! link javascriptBOMLocationProp Fg
highlight! link javascriptEncodingProp Fg
highlight! link javascriptCryptoProp Fg
highlight! link javascriptBOMHistoryProp Fg
highlight! link javascriptDOMFormProp Fg
highlight! link javascriptDataViewProp Fg
highlight! link javascriptBroadcastProp Fg
highlight! link javascriptMathStaticProp Fg
" }}}
" vim-jsx-pretty: https://github.com/maxmellon/vim-jsx-pretty{{{
highlight! link jsxTagName RedItalic
highlight! link jsxOpenPunct Green
highlight! link jsxClosePunct Blue
highlight! link jsxEscapeJs Purple
highlight! link jsxAttrib Blue
" }}}
" ft_end }}}
" ft_begin: typescript/typescriptreact {{{
" vim-typescript: https://github.com/leafgarland/typescript-vim{{{
highlight! link typescriptStorageClass Red
highlight! link typescriptEndColons Fg
highlight! link typescriptSource BlueItalic
highlight! link typescriptMessage Green
highlight! link typescriptGlobalObjects BlueItalic
highlight! link typescriptInterpolation Purple
highlight! link typescriptInterpolationDelimiter Purple
highlight! link typescriptBraces Fg
highlight! link typescriptParens Fg
" }}}
" yats: https:github.com/HerringtonDarkholme/yats.vim{{{
highlight! link typescriptMethodAccessor Red
highlight! link typescriptVariable Red
highlight! link typescriptVariableDeclaration Fg
highlight! link typescriptTypeReference BlueItalic
highlight! link typescriptBraces Fg
highlight! link typescriptEnumKeyword Red
highlight! link typescriptEnum BlueItalic
highlight! link typescriptIdentifierName Fg
highlight! link typescriptProp Fg
highlight! link typescriptCall Fg
highlight! link typescriptInterfaceName BlueItalic
highlight! link typescriptEndColons Fg
highlight! link typescriptMember Fg
highlight! link typescriptMemberOptionality Red
highlight! link typescriptObjectLabel Fg
highlight! link typescriptDefaultParam Fg
highlight! link typescriptArrowFunc Red
highlight! link typescriptAbstract Red
highlight! link typescriptObjectColon Grey
highlight! link typescriptTypeAnnotation Grey
highlight! link typescriptAssign Red
highlight! link typescriptBinaryOp Red
highlight! link typescriptUnaryOp Red
highlight! link typescriptFuncComma Fg
highlight! link typescriptClassName BlueItalic
highlight! link typescriptClassHeritage BlueItalic
highlight! link typescriptInterfaceHeritage BlueItalic
highlight! link typescriptIdentifier OrangeItalic
highlight! link typescriptGlobal BlueItalic
highlight! link typescriptOperator Red
highlight! link typescriptNodeGlobal BlueItalic
highlight! link typescriptExport Red
highlight! link typescriptImport Red
highlight! link typescriptTypeParameter BlueItalic
highlight! link typescriptReadonlyModifier Red
highlight! link typescriptAccessibilityModifier Red
highlight! link typescriptAmbientDeclaration Red
highlight! link typescriptTemplateSubstitution Purple
highlight! link typescriptTemplateSB Purple
highlight! link typescriptExceptions Red
highlight! link typescriptCastKeyword Red
highlight! link typescriptOptionalMark Red
highlight! link typescriptNull OrangeItalic
highlight! link typescriptMappedIn Red
highlight! link typescriptFuncTypeArrow Red
highlight! link typescriptTernaryOp Red
highlight! link typescriptParenExp Fg
highlight! link typescriptIndexExpr Fg
highlight! link typescriptDotNotation Grey
highlight! link typescriptGlobalNumberDot Grey
highlight! link typescriptGlobalStringDot Grey
highlight! link typescriptGlobalArrayDot Grey
highlight! link typescriptGlobalObjectDot Grey
highlight! link typescriptGlobalSymbolDot Grey
highlight! link typescriptGlobalMathDot Grey
highlight! link typescriptGlobalDateDot Grey
highlight! link typescriptGlobalJSONDot Grey
highlight! link typescriptGlobalRegExpDot Grey
highlight! link typescriptGlobalPromiseDot Grey
highlight! link typescriptGlobalURLDot Grey
highlight! link typescriptGlobalMethod Green
highlight! link typescriptDOMStorageMethod Green
highlight! link typescriptFileMethod Green
highlight! link typescriptFileReaderMethod Green
highlight! link typescriptFileListMethod Green
highlight! link typescriptBlobMethod Green
highlight! link typescriptURLStaticMethod Green
highlight! link typescriptNumberStaticMethod Green
highlight! link typescriptNumberMethod Green
highlight! link typescriptDOMNodeMethod Green
highlight! link typescriptPaymentMethod Green
highlight! link typescriptPaymentResponseMethod Green
highlight! link typescriptHeadersMethod Green
highlight! link typescriptRequestMethod Green
highlight! link typescriptResponseMethod Green
highlight! link typescriptES6SetMethod Green
highlight! link typescriptReflectMethod Green
highlight! link typescriptBOMWindowMethod Green
highlight! link typescriptGeolocationMethod Green
highlight! link typescriptServiceWorkerMethod Green
highlight! link typescriptCacheMethod Green
highlight! link typescriptES6MapMethod Green
highlight! link typescriptFunctionMethod Green
highlight! link typescriptRegExpMethod Green
highlight! link typescriptXHRMethod Green
highlight! link typescriptBOMNavigatorMethod Green
highlight! link typescriptServiceWorkerMethod Green
highlight! link typescriptIntlMethod Green
highlight! link typescriptDOMEventTargetMethod Green
highlight! link typescriptDOMEventMethod Green
highlight! link typescriptDOMDocMethod Green
highlight! link typescriptStringStaticMethod Green
highlight! link typescriptStringMethod Green
highlight! link typescriptSymbolStaticMethod Green
highlight! link typescriptObjectStaticMethod Green
highlight! link typescriptObjectMethod Green
highlight! link typescriptJSONStaticMethod Green
highlight! link typescriptEncodingMethod Green
highlight! link typescriptBOMLocationMethod Green
highlight! link typescriptPromiseStaticMethod Green
highlight! link typescriptPromiseMethod Green
highlight! link typescriptSubtleCryptoMethod Green
highlight! link typescriptCryptoMethod Green
highlight! link typescriptBOMHistoryMethod Green
highlight! link typescriptDOMFormMethod Green
highlight! link typescriptConsoleMethod Green
highlight! link typescriptDateStaticMethod Green
highlight! link typescriptDateMethod Green
highlight! link typescriptArrayStaticMethod Green
highlight! link typescriptArrayMethod Green
highlight! link typescriptMathStaticMethod Green
highlight! link typescriptStringProperty Fg
highlight! link typescriptDOMStorageProp Fg
highlight! link typescriptFileReaderProp Fg
highlight! link typescriptURLUtilsProp Fg
highlight! link typescriptNumberStaticProp Fg
highlight! link typescriptDOMNodeProp Fg
highlight! link typescriptBOMWindowProp Fg
highlight! link typescriptRequestProp Fg
highlight! link typescriptResponseProp Fg
highlight! link typescriptPaymentProp Fg
highlight! link typescriptPaymentResponseProp Fg
highlight! link typescriptPaymentAddressProp Fg
highlight! link typescriptPaymentShippingOptionProp Fg
highlight! link typescriptES6SetProp Fg
highlight! link typescriptServiceWorkerProp Fg
highlight! link typescriptES6MapProp Fg
highlight! link typescriptRegExpStaticProp Fg
highlight! link typescriptRegExpProp Fg
highlight! link typescriptBOMNavigatorProp Green
highlight! link typescriptXHRProp Fg
highlight! link typescriptDOMEventProp Fg
highlight! link typescriptDOMDocProp Fg
highlight! link typescriptBOMNetworkProp Fg
highlight! link typescriptSymbolStaticProp Fg
highlight! link typescriptEncodingProp Fg
highlight! link typescriptBOMLocationProp Fg
highlight! link typescriptCryptoProp Fg
highlight! link typescriptDOMFormProp Fg
highlight! link typescriptBOMHistoryProp Fg
highlight! link typescriptMathStaticProp Fg
" }}}
" ft_end }}}
" ft_begin: dart {{{
" dart-lang: https://github.com/dart-lang/dart-vim-plugin{{{
highlight! link dartCoreClasses BlueItalic
highlight! link dartTypeName BlueItalic
highlight! link dartInterpolation Purple
highlight! link dartTypeDef Red
highlight! link dartClassDecl Red
highlight! link dartLibrary Red
highlight! link dartMetadata OrangeItalic
" }}}
" ft_end }}}
" ft_begin: c/cpp/objc/objcpp {{{
" vim-cpp-enhanced-highlight: https://github.com/octol/vim-cpp-enhanced-highlight{{{
highlight! link cLabel Red
highlight! link cppSTLnamespace BlueItalic
highlight! link cppSTLtype BlueItalic
highlight! link cppAccess Red
highlight! link cppStructure Red
highlight! link cppSTLios BlueItalic
highlight! link cppSTLiterator BlueItalic
highlight! link cppSTLexception Red
" }}}
" vim-cpp-modern: https://github.com/bfrg/vim-cpp-modern{{{
highlight! link cppSTLVariable BlueItalic
" }}}
" chromatica: https://github.com/arakashic/chromatica.nvim{{{
highlight! link Member OrangeItalic
highlight! link Variable Fg
highlight! link Namespace BlueItalic
highlight! link EnumConstant OrangeItalic
highlight! link chromaticaException Red
highlight! link chromaticaCast Red
highlight! link OperatorOverload Red
highlight! link AccessQual Red
highlight! link Linkage Red
highlight! link AutoType BlueItalic
" }}}
" vim-lsp-cxx-highlight https://github.com/jackguo380/vim-lsp-cxx-highlight{{{
highlight! link LspCxxHlSkippedRegion Grey
highlight! link LspCxxHlSkippedRegionBeginEnd Red
highlight! link LspCxxHlGroupEnumConstant OrangeItalic
highlight! link LspCxxHlGroupNamespace BlueItalic
highlight! link LspCxxHlGroupMemberVariable OrangeItalic
" }}}
" ft_end }}}
" ft_begin: objc {{{
" builtin: {{{
highlight! link objcModuleImport Red
highlight! link objcException Red
highlight! link objcProtocolList Fg
highlight! link objcDirective Red
highlight! link objcPropertyAttribute Purple
highlight! link objcHiddenArgument Fg
" }}}
" ft_end }}}
" ft_begin: cs {{{
" builtin: https://github.com/nickspoons/vim-cs{{{
highlight! link csUnspecifiedStatement Red
highlight! link csStorage Red
highlight! link csClass Red
highlight! link csNewType BlueItalic
highlight! link csContextualStatement Red
highlight! link csInterpolationDelimiter Purple
highlight! link csInterpolation Purple
highlight! link csEndColon Fg
" }}}
" ft_end }}}
" ft_begin: python {{{
" builtin: {{{
highlight! link pythonBuiltin BlueItalic
highlight! link pythonExceptions Red
highlight! link pythonDecoratorName OrangeItalic
" }}}
" python-syntax: https://github.com/vim-python/python-syntax{{{
highlight! link pythonExClass BlueItalic
highlight! link pythonBuiltinType BlueItalic
highlight! link pythonBuiltinObj OrangeItalic
highlight! link pythonDottedName OrangeItalic
highlight! link pythonBuiltinFunc Green
highlight! link pythonFunction Green
highlight! link pythonDecorator OrangeItalic
highlight! link pythonInclude Include
highlight! link pythonImport PreProc
highlight! link pythonOperator Red
highlight! link pythonConditional Red
highlight! link pythonRepeat Red
highlight! link pythonException Red
highlight! link pythonNone OrangeItalic
highlight! link pythonCoding Grey
highlight! link pythonDot Grey
" }}}
" semshi: https://github.com/numirias/semshi{{{
call sonokai#highlight('semshiUnresolved', s:palette.orange, s:palette.none, 'undercurl')
highlight! link semshiImported BlueItalic
highlight! link semshiParameter OrangeItalic
highlight! link semshiParameterUnused Grey
highlight! link semshiSelf BlueItalic
highlight! link semshiGlobal Green
highlight! link semshiBuiltin Green
highlight! link semshiAttribute OrangeItalic
highlight! link semshiLocal Red
highlight! link semshiFree Red
highlight! link semshiSelected CocHighlightText
highlight! link semshiErrorSign ALEErrorSign
highlight! link semshiErrorChar ALEErrorSign
" }}}
" ft_end }}}
" ft_begin: lua {{{
" builtin: {{{
highlight! link luaFunc Green
highlight! link luaFunction Red
highlight! link luaTable Fg
highlight! link luaIn Red
" }}}
" vim-lua: https://github.com/tbastos/vim-lua{{{
highlight! link luaFuncCall Green
highlight! link luaLocal Red
highlight! link luaSpecialValue Green
highlight! link luaBraces Fg
highlight! link luaBuiltIn BlueItalic
highlight! link luaNoise Grey
highlight! link luaLabel Purple
highlight! link luaFuncTable BlueItalic
highlight! link luaFuncArgName Fg
highlight! link luaEllipsis Red
highlight! link luaDocTag Green
" }}}
" ft_end }}}
" ft_begin: java {{{
" builtin: {{{
highlight! link javaClassDecl Red
highlight! link javaMethodDecl Red
highlight! link javaVarArg Fg
highlight! link javaAnnotation Purple
highlight! link javaUserLabel Purple
highlight! link javaTypedef OrangeItalic
highlight! link javaParen Fg
highlight! link javaParen1 Fg
highlight! link javaParen2 Fg
highlight! link javaParen3 Fg
highlight! link javaParen4 Fg
highlight! link javaParen5 Fg
" }}}
" ft_end }}}
" ft_begin: kotlin {{{
" kotlin-vim: https://github.com/udalov/kotlin-vim{{{
highlight! link ktSimpleInterpolation Purple
highlight! link ktComplexInterpolation Purple
highlight! link ktComplexInterpolationBrace Purple
highlight! link ktStructure Red
highlight! link ktKeyword OrangeItalic
" }}}
" ft_end }}}
" ft_begin: scala {{{
" builtin: https://github.com/derekwyatt/vim-scala{{{
highlight! link scalaNameDefinition Fg
highlight! link scalaInterpolationBoundary Purple
highlight! link scalaInterpolation Purple
highlight! link scalaTypeOperator Red
highlight! link scalaOperator Red
highlight! link scalaKeywordModifier Red
" }}}
" ft_end }}}
" ft_begin: go {{{
" builtin: https://github.com/google/vim-ft-go{{{
highlight! link goDirective Red
highlight! link goConstants OrangeItalic
highlight! link goDeclType Red
" }}}
" polyglot: {{{
highlight! link goPackage Red
highlight! link goImport Red
highlight! link goBuiltins Green
highlight! link goPredefinedIdentifiers OrangeItalic
highlight! link goVar Red
" }}}
" ft_end }}}
" ft_begin: rust {{{
" builtin: https://github.com/rust-lang/rust.vim{{{
highlight! link rustStructure Red
highlight! link rustIdentifier OrangeItalic
highlight! link rustModPath BlueItalic
highlight! link rustModPathSep Grey
highlight! link rustSelf OrangeItalic
highlight! link rustSuper OrangeItalic
highlight! link rustDeriveTrait Purple
highlight! link rustEnumVariant Purple
highlight! link rustMacroVariable OrangeItalic
highlight! link rustAssert Green
highlight! link rustPanic Green
highlight! link rustPubScopeCrate BlueItalic
highlight! link rustAttribute Purple
" }}}
" ft_end }}}
" ft_begin: swift {{{
" swift.vim: https://github.com/keith/swift.vim{{{
highlight! link swiftInterpolatedWrapper Purple
highlight! link swiftInterpolatedString Purple
highlight! link swiftProperty Fg
highlight! link swiftTypeDeclaration Red
highlight! link swiftClosureArgument OrangeItalic
highlight! link swiftStructure Red
" }}}
" ft_end }}}
" ft_begin: php {{{
" builtin: https://jasonwoof.com/gitweb/?p=vim-syntax.git;a=blob;f=php.vim;hb=HEAD{{{
highlight! link phpVarSelector Fg
highlight! link phpIdentifier Fg
highlight! link phpDefine Green
highlight! link phpStructure Red
highlight! link phpSpecialFunction Green
highlight! link phpInterpSimpleCurly Purple
highlight! link phpComparison Red
highlight! link phpMethodsVar Fg
highlight! link phpInterpVarname Fg
highlight! link phpMemberSelector Red
highlight! link phpLabel Red
" }}}
" php.vim: https://github.com/StanAngeloff/php.vim{{{
highlight! link phpParent Fg
highlight! link phpNowDoc Yellow
highlight! link phpFunction Green
highlight! link phpMethod Green
highlight! link phpClass BlueItalic
highlight! link phpSuperglobals BlueItalic
highlight! link phpNullValue OrangeItalic
" }}}
" ft_end }}}
" ft_begin: ruby {{{
" builtin: https://github.com/vim-ruby/vim-ruby{{{
highlight! link rubyKeywordAsMethod Green
highlight! link rubyInterpolation Purple
highlight! link rubyInterpolationDelimiter Purple
highlight! link rubyStringDelimiter Yellow
highlight! link rubyBlockParameterList Fg
highlight! link rubyDefine Red
highlight! link rubyModuleName Red
highlight! link rubyAccess Red
highlight! link rubyMacro Red
highlight! link rubySymbol Fg
" }}}
" ft_end }}}
" ft_begin: haskell {{{
" haskell-vim: https://github.com/neovimhaskell/haskell-vim{{{
highlight! link haskellBrackets Fg
highlight! link haskellIdentifier OrangeItalic
highlight! link haskellDecl Red
highlight! link haskellType BlueItalic
highlight! link haskellDeclKeyword Red
highlight! link haskellWhere Red
highlight! link haskellDeriving Red
highlight! link haskellForeignKeywords Red
" }}}
" ft_end }}}
" ft_begin: perl/pod {{{
" builtin: https://github.com/vim-perl/vim-perl{{{
highlight! link perlStatementPackage Red
highlight! link perlStatementInclude Red
highlight! link perlStatementStorage Red
highlight! link perlStatementList Red
highlight! link perlMatchStartEnd Red
highlight! link perlVarSimpleMemberName Green
highlight! link perlVarSimpleMember Fg
highlight! link perlMethod Green
highlight! link podVerbatimLine Green
highlight! link podCmdText Yellow
highlight! link perlVarPlain Fg
highlight! link perlVarPlain2 Fg
" }}}
" ft_end }}}
" ft_begin: ocaml {{{
" builtin: https://github.com/rgrinberg/vim-ocaml{{{
highlight! link ocamlArrow Red
highlight! link ocamlEqual Red
highlight! link ocamlOperator Red
highlight! link ocamlKeyChar Red
highlight! link ocamlModPath Green
highlight! link ocamlFullMod Green
highlight! link ocamlModule BlueItalic
highlight! link ocamlConstructor Orange
highlight! link ocamlModParam Fg
highlight! link ocamlModParam1 Fg
highlight! link ocamlAnyVar Fg " aqua
highlight! link ocamlPpxEncl Red
highlight! link ocamlPpxIdentifier Fg
highlight! link ocamlSigEncl Red
highlight! link ocamlModParam1 Fg
" }}}
" ft_end }}}
" ft_begin: erlang {{{
" builtin: https://github.com/vim-erlang/vim-erlang-runtime{{{
highlight! link erlangAtom Fg
highlight! link erlangVariable Fg
highlight! link erlangLocalFuncRef Green
highlight! link erlangLocalFuncCall Green
highlight! link erlangGlobalFuncRef Green
highlight! link erlangGlobalFuncCall Green
highlight! link erlangAttribute BlueItalic
highlight! link erlangPipe Red
" }}}
" ft_end }}}
" ft_begin: elixir {{{
" vim-elixir: https://github.com/elixir-editors/vim-elixir{{{
highlight! link elixirStringDelimiter Yellow
highlight! link elixirKeyword Red
highlight! link elixirInterpolation Purple
highlight! link elixirInterpolationDelimiter Purple
highlight! link elixirSelf BlueItalic
highlight! link elixirPseudoVariable OrangeItalic
highlight! link elixirModuleDefine Red
highlight! link elixirBlockDefinition Red
highlight! link elixirDefine Red
highlight! link elixirPrivateDefine Red
highlight! link elixirGuard Red
highlight! link elixirPrivateGuard Red
highlight! link elixirProtocolDefine Red
highlight! link elixirImplDefine Red
highlight! link elixirRecordDefine Red
highlight! link elixirPrivateRecordDefine Red
highlight! link elixirMacroDefine Red
highlight! link elixirPrivateMacroDefine Red
highlight! link elixirDelegateDefine Red
highlight! link elixirOverridableDefine Red
highlight! link elixirExceptionDefine Red
highlight! link elixirCallbackDefine Red
highlight! link elixirStructDefine Red
highlight! link elixirExUnitMacro Red
" }}}
" ft_end }}}
" ft_begin: lisp {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_LISP{{{
highlight! link lispAtomMark Purple
highlight! link lispKey Orange
highlight! link lispFunc Green
" }}}
" ft_end }}}
" ft_begin: clojure {{{
" builtin: https://github.com/guns/vim-clojure-static{{{
highlight! link clojureMacro Red
highlight! link clojureFunc Green
highlight! link clojureConstant OrangeItalic
highlight! link clojureSpecial Red
highlight! link clojureDefine Red
highlight! link clojureKeyword Blue
highlight! link clojureVariable Fg
highlight! link clojureMeta Purple
highlight! link clojureDeref Purple
" }}}
" ft_end }}}
" ft_begin: matlab {{{
" builtin: {{{
highlight! link matlabSemicolon Fg
highlight! link matlabFunction RedItalic
highlight! link matlabImplicit Green
highlight! link matlabDelimiter Fg
highlight! link matlabOperator Green
highlight! link matlabArithmeticOperator Red
highlight! link matlabArithmeticOperator Red
highlight! link matlabRelationalOperator Red
highlight! link matlabRelationalOperator Red
highlight! link matlabLogicalOperator Red
" }}}
" ft_end }}}
" ft_begin: sh/zsh {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_SH{{{
highlight! link shRange Fg
highlight! link shOption Purple
highlight! link shQuote Yellow
highlight! link shVariable BlueItalic
highlight! link shDerefSimple BlueItalic
highlight! link shDerefVar BlueItalic
highlight! link shDerefSpecial BlueItalic
highlight! link shDerefOff BlueItalic
highlight! link shVarAssign Red
highlight! link shFunctionOne Green
highlight! link shFunctionKey Red
" }}}
" ft_end }}}
" ft_begin: zsh {{{
" builtin: https://github.com/chrisbra/vim-zsh{{{
highlight! link zshOption BlueItalic
highlight! link zshSubst Orange
highlight! link zshFunction Green
" }}}
" ft_end }}}
" ft_begin: ps1 {{{
" vim-ps1: https://github.com/PProvost/vim-ps1{{{
highlight! link ps1FunctionInvocation Green
highlight! link ps1FunctionDeclaration Green
highlight! link ps1InterpolationDelimiter Purple
highlight! link ps1BuiltIn BlueItalic
" }}}
" ft_end }}}
" ft_begin: vim {{{
call sonokai#highlight('vimCommentTitle', s:palette.grey, s:palette.none, 'bold')
highlight! link vimLet Red
highlight! link vimFunction Green
highlight! link vimIsCommand Fg
highlight! link vimUserFunc Green
highlight! link vimFuncName Green
highlight! link vimMap BlueItalic
highlight! link vimNotation Purple
highlight! link vimMapLhs Green
highlight! link vimMapRhs Green
highlight! link vimSetEqual BlueItalic
highlight! link vimSetSep Fg
highlight! link vimOption BlueItalic
highlight! link vimUserAttrbKey BlueItalic
highlight! link vimUserAttrb Green
highlight! link vimAutoCmdSfxList Orange
highlight! link vimSynType Orange
highlight! link vimHiBang Orange
highlight! link vimSet BlueItalic
highlight! link vimSetSep Grey
" ft_end }}}
" ft_begin: make {{{
highlight! link makeIdent Purple
highlight! link makeSpecTarget BlueItalic
highlight! link makeTarget Orange
highlight! link makeCommands Red
" ft_end }}}
" ft_begin: cmake {{{
highlight! link cmakeCommand Red
highlight! link cmakeKWconfigure_package_config_file BlueItalic
highlight! link cmakeKWwrite_basic_package_version_file BlueItalic
highlight! link cmakeKWExternalProject Green
highlight! link cmakeKWadd_compile_definitions Green
highlight! link cmakeKWadd_compile_options Green
highlight! link cmakeKWadd_custom_command Green
highlight! link cmakeKWadd_custom_target Green
highlight! link cmakeKWadd_definitions Green
highlight! link cmakeKWadd_dependencies Green
highlight! link cmakeKWadd_executable Green
highlight! link cmakeKWadd_library Green
highlight! link cmakeKWadd_link_options Green
highlight! link cmakeKWadd_subdirectory Green
highlight! link cmakeKWadd_test Green
highlight! link cmakeKWbuild_command Green
highlight! link cmakeKWcmake_host_system_information Green
highlight! link cmakeKWcmake_minimum_required Green
highlight! link cmakeKWcmake_parse_arguments Green
highlight! link cmakeKWcmake_policy Green
highlight! link cmakeKWconfigure_file Green
highlight! link cmakeKWcreate_test_sourcelist Green
highlight! link cmakeKWctest_build Green
highlight! link cmakeKWctest_configure Green
highlight! link cmakeKWctest_coverage Green
highlight! link cmakeKWctest_memcheck Green
highlight! link cmakeKWctest_run_script Green
highlight! link cmakeKWctest_start Green
highlight! link cmakeKWctest_submit Green
highlight! link cmakeKWctest_test Green
highlight! link cmakeKWctest_update Green
highlight! link cmakeKWctest_upload Green
highlight! link cmakeKWdefine_property Green
highlight! link cmakeKWdoxygen_add_docs Green
highlight! link cmakeKWenable_language Green
highlight! link cmakeKWenable_testing Green
highlight! link cmakeKWexec_program Green
highlight! link cmakeKWexecute_process Green
highlight! link cmakeKWexport Green
highlight! link cmakeKWexport_library_dependencies Green
highlight! link cmakeKWfile Green
highlight! link cmakeKWfind_file Green
highlight! link cmakeKWfind_library Green
highlight! link cmakeKWfind_package Green
highlight! link cmakeKWfind_path Green
highlight! link cmakeKWfind_program Green
highlight! link cmakeKWfltk_wrap_ui Green
highlight! link cmakeKWforeach Green
highlight! link cmakeKWfunction Green
highlight! link cmakeKWget_cmake_property Green
highlight! link cmakeKWget_directory_property Green
highlight! link cmakeKWget_filename_component Green
highlight! link cmakeKWget_property Green
highlight! link cmakeKWget_source_file_property Green
highlight! link cmakeKWget_target_property Green
highlight! link cmakeKWget_test_property Green
highlight! link cmakeKWif Green
highlight! link cmakeKWinclude Green
highlight! link cmakeKWinclude_directories Green
highlight! link cmakeKWinclude_external_msproject Green
highlight! link cmakeKWinclude_guard Green
highlight! link cmakeKWinstall Green
highlight! link cmakeKWinstall_files Green
highlight! link cmakeKWinstall_programs Green
highlight! link cmakeKWinstall_targets Green
highlight! link cmakeKWlink_directories Green
highlight! link cmakeKWlist Green
highlight! link cmakeKWload_cache Green
highlight! link cmakeKWload_command Green
highlight! link cmakeKWmacro Green
highlight! link cmakeKWmark_as_advanced Green
highlight! link cmakeKWmath Green
highlight! link cmakeKWmessage Green
highlight! link cmakeKWoption Green
highlight! link cmakeKWproject Green
highlight! link cmakeKWqt_wrap_cpp Green
highlight! link cmakeKWqt_wrap_ui Green
highlight! link cmakeKWremove Green
highlight! link cmakeKWseparate_arguments Green
highlight! link cmakeKWset Green
highlight! link cmakeKWset_directory_properties Green
highlight! link cmakeKWset_property Green
highlight! link cmakeKWset_source_files_properties Green
highlight! link cmakeKWset_target_properties Green
highlight! link cmakeKWset_tests_properties Green
highlight! link cmakeKWsource_group Green
highlight! link cmakeKWstring Green
highlight! link cmakeKWsubdirs Green
highlight! link cmakeKWtarget_compile_definitions Green
highlight! link cmakeKWtarget_compile_features Green
highlight! link cmakeKWtarget_compile_options Green
highlight! link cmakeKWtarget_include_directories Green
highlight! link cmakeKWtarget_link_directories Green
highlight! link cmakeKWtarget_link_libraries Green
highlight! link cmakeKWtarget_link_options Green
highlight! link cmakeKWtarget_precompile_headers Green
highlight! link cmakeKWtarget_sources Green
highlight! link cmakeKWtry_compile Green
highlight! link cmakeKWtry_run Green
highlight! link cmakeKWunset Green
highlight! link cmakeKWuse_mangled_mesa Green
highlight! link cmakeKWvariable_requires Green
highlight! link cmakeKWvariable_watch Green
highlight! link cmakeKWwrite_file Green
" ft_end }}}
" ft_begin: json {{{
highlight! link jsonKeyword Red
highlight! link jsonString Green
highlight! link jsonBoolean Blue
highlight! link jsonNoise Grey
highlight! link jsonQuote Grey
highlight! link jsonBraces Fg
" ft_end }}}
" ft_begin: yaml {{{
highlight! link yamlKey Red
highlight! link yamlConstant BlueItalic
highlight! link yamlString Green
" ft_end }}}
" ft_begin: toml {{{
call sonokai#highlight('tomlTable', s:palette.purple, s:palette.none, 'bold')
highlight! link tomlKey Red
highlight! link tomlBoolean Blue
highlight! link tomlString Green
highlight! link tomlTableArray tomlTable
" ft_end }}}
" ft_begin: diff/git {{{
highlight! link diffAdded Green
highlight! link diffRemoved Red
highlight! link diffChanged Blue
highlight! link diffOldFile Yellow
highlight! link diffNewFile Orange
highlight! link diffFile Purple
highlight! link diffLine Grey
highlight! link diffIndexLine Purple
" ft_end }}}
" ft_begin: gitcommit {{{
highlight! link gitcommitSummary Red
highlight! link gitcommitUntracked Grey
highlight! link gitcommitDiscarded Grey
highlight! link gitcommitSelected Grey
highlight! link gitcommitUnmerged Grey
highlight! link gitcommitOnBranch Grey
highlight! link gitcommitArrow Grey
highlight! link gitcommitFile Green
" ft_end }}}
" ft_begin: dosini {{{
call sonokai#highlight('dosiniHeader', s:palette.red, s:palette.none, 'bold')
highlight! link dosiniLabel Blue
highlight! link dosiniValue Green
highlight! link dosiniNumber Green
" ft_end }}}
" ft_begin: help {{{
call sonokai#highlight('helpNote', s:palette.purple, s:palette.none, 'bold')
call sonokai#highlight('helpHeadline', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('helpHeader', s:palette.orange, s:palette.none, 'bold')
call sonokai#highlight('helpURL', s:palette.green, s:palette.none, 'underline')
call sonokai#highlight('helpHyperTextEntry', s:palette.blue, s:palette.none, 'bold')
highlight! link helpHyperTextJump Blue
highlight! link helpCommand Yellow
highlight! link helpExample Green
highlight! link helpSpecial Purple
highlight! link helpSectionDelim Grey
" ft_end }}}
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
