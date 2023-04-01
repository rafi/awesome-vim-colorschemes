" -----------------------------------------------------------------------------
" Name:         Sonokai
" Description:  High Contrast & Vivid Color Scheme based on Monokai Pro
" Author:       Sainnhepark <i@sainnhe.dev>
" Website:      https://github.com/sainnhe/sonokai/
" License:      MIT
" -----------------------------------------------------------------------------

" Initialization: {{{
let s:configuration = sonokai#get_configuration()
let s:palette = sonokai#get_palette(s:configuration.style, s:configuration.colors_override)
let s:path = expand('<sfile>:p') " the path of this script
let s:last_modified = 'Thu Mar 23 11:13:28 UTC 2023'
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
if s:configuration.transparent_background >= 1
  call sonokai#highlight('Normal', s:palette.fg, s:palette.none)
  call sonokai#highlight('NormalNC', s:palette.fg, s:palette.none)
  call sonokai#highlight('Terminal', s:palette.fg, s:palette.none)
  if s:configuration.show_eob
    call sonokai#highlight('EndOfBuffer', s:palette.bg4, s:palette.none)
  else
    call sonokai#highlight('EndOfBuffer', s:palette.bg0, s:palette.none)
  endif
  call sonokai#highlight('Folded', s:palette.grey, s:palette.none)
  call sonokai#highlight('ToolbarLine', s:palette.fg, s:palette.none)
  call sonokai#highlight('FoldColumn', s:palette.grey_dim, s:palette.none)
else
  call sonokai#highlight('Normal', s:palette.fg, s:palette.bg0)
  if s:configuration.dim_inactive_windows
    call sonokai#highlight('NormalNC', s:palette.fg, s:palette.bg_dim)
  else
    call sonokai#highlight('NormalNC', s:palette.fg, s:palette.bg0)
  endif
  call sonokai#highlight('Terminal', s:palette.fg, s:palette.bg0)
  if s:configuration.show_eob
    if s:configuration.dim_inactive_windows
      call sonokai#highlight('EndOfBuffer', s:palette.bg4, s:palette.bg_dim)
    else
      call sonokai#highlight('EndOfBuffer', s:palette.bg4, s:palette.bg0)
    endif
  else
    if s:configuration.dim_inactive_windows
      call sonokai#highlight('EndOfBuffer', s:palette.bg_dim, s:palette.bg_dim)
    else
      call sonokai#highlight('EndOfBuffer', s:palette.bg0, s:palette.bg0)
    endif
  endif
  call sonokai#highlight('Folded', s:palette.grey, s:palette.bg1)
  call sonokai#highlight('ToolbarLine', s:palette.fg, s:palette.bg2)
  call sonokai#highlight('FoldColumn', s:palette.grey_dim, s:palette.none)
endif
call sonokai#highlight('SignColumn', s:palette.fg, s:palette.none)
call sonokai#highlight('IncSearch', s:palette.bg0, s:palette.bg_red)
call sonokai#highlight('Search', s:palette.bg0, s:palette.bg_green)
highlight! link CurSearch IncSearch
call sonokai#highlight('ColorColumn', s:palette.none, s:palette.bg1)
call sonokai#highlight('Conceal', s:palette.grey_dim, s:palette.none)
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
call sonokai#highlight('LineNr', s:palette.grey_dim, s:palette.none)
if &diff
  call sonokai#highlight('CursorLineNr', s:palette.fg, s:palette.none, 'underline')
else
  call sonokai#highlight('CursorLineNr', s:palette.fg, s:palette.none)
endif
call sonokai#highlight('DiffAdd', s:palette.none, s:palette.diff_green)
call sonokai#highlight('DiffChange', s:palette.none, s:palette.diff_blue)
call sonokai#highlight('DiffDelete', s:palette.none, s:palette.diff_red)
call sonokai#highlight('DiffText', s:palette.bg0, s:palette.blue)
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
call sonokai#highlight('PmenuKind', s:palette.green, s:palette.bg2)
call sonokai#highlight('PmenuExtra', s:palette.grey, s:palette.bg2)
highlight! link WildMenu PmenuSel
call sonokai#highlight('PmenuThumb', s:palette.none, s:palette.grey)
call sonokai#highlight('NormalFloat', s:palette.fg, s:palette.bg2)
call sonokai#highlight('FloatBorder', s:palette.grey, s:palette.bg2)
call sonokai#highlight('Question', s:palette.yellow, s:palette.none)
if s:configuration.spell_foreground ==# 'none'
  call sonokai#highlight('SpellBad', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
  call sonokai#highlight('SpellCap', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
  call sonokai#highlight('SpellLocal', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
  call sonokai#highlight('SpellRare', s:palette.none, s:palette.none, 'undercurl', s:palette.purple)
else
  call sonokai#highlight('SpellBad', s:palette.red, s:palette.none, 'undercurl', s:palette.red)
  call sonokai#highlight('SpellCap', s:palette.yellow, s:palette.none, 'undercurl', s:palette.yellow)
  call sonokai#highlight('SpellLocal', s:palette.blue, s:palette.none, 'undercurl', s:palette.blue)
  call sonokai#highlight('SpellRare', s:palette.purple, s:palette.none, 'undercurl', s:palette.purple)
endif
if s:configuration.transparent_background == 2
  call sonokai#highlight('StatusLine', s:palette.fg, s:palette.none)
  call sonokai#highlight('StatusLineTerm', s:palette.fg, s:palette.none)
  call sonokai#highlight('StatusLineNC', s:palette.grey, s:palette.none)
  call sonokai#highlight('StatusLineTermNC', s:palette.grey, s:palette.none)
  call sonokai#highlight('TabLine', s:palette.fg, s:palette.bg4)
  call sonokai#highlight('TabLineFill', s:palette.grey, s:palette.none)
  call sonokai#highlight('TabLineSel', s:palette.bg0, s:palette.bg_red)
else
  call sonokai#highlight('StatusLine', s:palette.fg, s:palette.bg3)
  call sonokai#highlight('StatusLineTerm', s:palette.fg, s:palette.bg3)
  call sonokai#highlight('StatusLineNC', s:palette.grey, s:palette.bg1)
  call sonokai#highlight('StatusLineTermNC', s:palette.grey, s:palette.bg1)
  call sonokai#highlight('TabLine', s:palette.fg, s:palette.bg4)
  call sonokai#highlight('TabLineFill', s:palette.grey, s:palette.bg1)
  call sonokai#highlight('TabLineSel', s:palette.bg0, s:palette.bg_red)
endif
if s:configuration.dim_inactive_windows
  call sonokai#highlight('VertSplit', s:palette.bg4, s:palette.bg_dim)
else
  call sonokai#highlight('VertSplit', s:palette.black, s:palette.none)
endif
highlight! link WinSeparator VertSplit
call sonokai#highlight('Visual', s:palette.none, s:palette.bg3)
call sonokai#highlight('VisualNOS', s:palette.none, s:palette.bg3, 'underline')
call sonokai#highlight('QuickFixLine', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('Debug', s:palette.yellow, s:palette.none)
call sonokai#highlight('debugPC', s:palette.bg0, s:palette.green)
call sonokai#highlight('debugBreakpoint', s:palette.bg0, s:palette.red)
call sonokai#highlight('ToolbarButton', s:palette.bg0, s:palette.bg_blue)
if has('nvim')
  call sonokai#highlight('Substitute', s:palette.bg0, s:palette.yellow)
  highlight! link WinBarNC Grey
  highlight! link DiagnosticFloatingError ErrorFloat
  highlight! link DiagnosticFloatingWarn WarningFloat
  highlight! link DiagnosticFloatingInfo InfoFloat
  highlight! link DiagnosticFloatingHint HintFloat
  highlight! link DiagnosticError ErrorText
  highlight! link DiagnosticWarn WarningText
  highlight! link DiagnosticInfo InfoText
  highlight! link DiagnosticHint HintText
  highlight! link DiagnosticVirtualTextError VirtualTextError
  highlight! link DiagnosticVirtualTextWarn VirtualTextWarning
  highlight! link DiagnosticVirtualTextInfo VirtualTextInfo
  highlight! link DiagnosticVirtualTextHint VirtualTextHint
  highlight! link DiagnosticUnderlineError ErrorText
  highlight! link DiagnosticUnderlineWarn WarningText
  highlight! link DiagnosticUnderlineInfo InfoText
  highlight! link DiagnosticUnderlineHint HintText
  highlight! link DiagnosticSignError RedSign
  highlight! link DiagnosticSignWarn YellowSign
  highlight! link DiagnosticSignInfo BlueSign
  highlight! link DiagnosticSignHint GreenSign
  highlight! link LspDiagnosticsFloatingError DiagnosticFloatingError
  highlight! link LspDiagnosticsFloatingWarning DiagnosticFloatingWarn
  highlight! link LspDiagnosticsFloatingInformation DiagnosticFloatingInfo
  highlight! link LspDiagnosticsFloatingHint DiagnosticFloatingHint
  highlight! link LspDiagnosticsDefaultError DiagnosticError
  highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
  highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
  highlight! link LspDiagnosticsDefaultHint DiagnosticHint
  highlight! link LspDiagnosticsVirtualTextError DiagnosticVirtualTextError
  highlight! link LspDiagnosticsVirtualTextWarning DiagnosticVirtualTextWarn
  highlight! link LspDiagnosticsVirtualTextInformation DiagnosticVirtualTextInfo
  highlight! link LspDiagnosticsVirtualTextHint DiagnosticVirtualTextHint
  highlight! link LspDiagnosticsUnderlineError DiagnosticUnderlineError
  highlight! link LspDiagnosticsUnderlineWarning DiagnosticUnderlineWarn
  highlight! link LspDiagnosticsUnderlineInformation DiagnosticUnderlineInfo
  highlight! link LspDiagnosticsUnderlineHint DiagnosticUnderlineHint
  highlight! link LspDiagnosticsSignError DiagnosticSignError
  highlight! link LspDiagnosticsSignWarning DiagnosticSignWarn
  highlight! link LspDiagnosticsSignInformation DiagnosticSignInfo
  highlight! link LspDiagnosticsSignHint DiagnosticSignHint
  highlight! link LspReferenceText CurrentWord
  highlight! link LspReferenceRead CurrentWord
  highlight! link LspReferenceWrite CurrentWord
  highlight! link LspCodeLens VirtualTextInfo
  highlight! link LspCodeLensSeparator VirtualTextHint
  highlight! link LspSignatureActiveParameter Search
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
call sonokai#highlight('Todo', s:palette.bg0, s:palette.blue, 'bold')
if s:configuration.disable_italic_comment
  call sonokai#highlight('Comment', s:palette.grey, s:palette.none)
  call sonokai#highlight('SpecialComment', s:palette.grey, s:palette.none)
else
  call sonokai#highlight('Comment', s:palette.grey, s:palette.none, 'italic')
  call sonokai#highlight('SpecialComment', s:palette.grey, s:palette.none, 'italic')
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
call sonokai#highlight('RedSign', s:palette.red, s:palette.none)
call sonokai#highlight('OrangeSign', s:palette.orange, s:palette.none)
call sonokai#highlight('YellowSign', s:palette.yellow, s:palette.none)
call sonokai#highlight('GreenSign', s:palette.green, s:palette.none)
call sonokai#highlight('BlueSign', s:palette.blue, s:palette.none)
call sonokai#highlight('PurpleSign', s:palette.purple, s:palette.none)
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
if s:configuration.diagnostic_virtual_text ==# 'grey'
  highlight! link VirtualTextWarning Grey
  highlight! link VirtualTextError Grey
  highlight! link VirtualTextInfo Grey
  highlight! link VirtualTextHint Grey
else
  highlight! link VirtualTextWarning Yellow
  highlight! link VirtualTextError Red
  highlight! link VirtualTextInfo Blue
  highlight! link VirtualTextHint Green
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
" Define a color for each LSP item kind to create highlights for nvim-cmp, aerial.nvim, nvim-navic and coc.nvim
let g:sonokai_lsp_kind_color = [
      \ ["Array", "Yellow"],
      \ ["Boolean", "Yellow"],
      \ ["Class", "Blue"],
      \ ["Color", "Yellow"],
      \ ["Constant", "Orange"],
      \ ["Constructor", "Green"],
      \ ["Default", "Yellow"],
      \ ["Enum", "Blue"],
      \ ["EnumMember", "Purple"],
      \ ["Event", "Yellow"],
      \ ["Field", "Green"],
      \ ["File", "Green"],
      \ ["Folder", "Yellow"],
      \ ["Function", "Green"],
      \ ["Interface", "Blue"],
      \ ["Key", "Red"],
      \ ["Keyword", "Red"],
      \ ["Method", "Green"],
      \ ["Module", "Blue"],
      \ ["Namespace", "Red"],
      \ ["Null", "Yellow"],
      \ ["Number", "Yellow"],
      \ ["Object", "Yellow"],
      \ ["Operator", "Red"],
      \ ["Package", "Red"],
      \ ["Property", "Orange"],
      \ ["Reference", "Yellow"],
      \ ["Snippet", "Yellow"],
      \ ["String", "Yellow"],
      \ ["Struct", "Blue"],
      \ ["Text", "Fg"],
      \ ["TypeParameter", "Blue"],
      \ ["Unit", "Purple"],
      \ ["Value", "Purple"],
      \ ["Variable", "Orange"],
      \ ]
" }}}
" }}}
" Terminal: {{{
if ((has('termguicolors') && &termguicolors) || has('gui_running')) && !s:configuration.disable_terminal_colors
  " Definition
  let s:terminal = {
        \ 'black':           s:palette.black,
        \ 'red':             s:palette.red,
        \ 'yellow':          s:palette.yellow,
        \ 'green':           s:palette.green,
        \ 'cyan':            s:palette.orange,
        \ 'blue':            s:palette.blue,
        \ 'purple':          s:palette.purple,
        \ 'white':           s:palette.fg,
        \ 'bright_black':    s:palette.grey,
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
    let g:terminal_color_8 = s:terminal.bright_black[0]
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
call sonokai#highlight('TSStrong', s:palette.none, s:palette.none, 'bold')
call sonokai#highlight('TSEmphasis', s:palette.none, s:palette.none, 'italic')
call sonokai#highlight('TSUnderline', s:palette.none, s:palette.none, 'underline')
call sonokai#highlight('TSNote', s:palette.bg0, s:palette.green, 'bold')
call sonokai#highlight('TSWarning', s:palette.bg0, s:palette.yellow, 'bold')
call sonokai#highlight('TSDanger', s:palette.bg0, s:palette.red, 'bold')
highlight! link TSAnnotation BlueItalic
highlight! link TSAttribute BlueItalic
highlight! link TSBoolean Purple
highlight! link TSCharacter Yellow
highlight! link TSCharacterSpecial SpecialChar
highlight! link TSComment Comment
highlight! link TSConditional Red
highlight! link TSConstBuiltin PurpleItalic
highlight! link TSConstMacro PurpleItalic
highlight! link TSConstant Fg
highlight! link TSConstructor Green
highlight! link TSDebug Debug
highlight! link TSDefine Define
highlight! link TSEnvironment Macro
highlight! link TSEnvironmentName Type
highlight! link TSError Error
highlight! link TSException Red
highlight! link TSField Orange
highlight! link TSFloat Purple
highlight! link TSFuncBuiltin Green
highlight! link TSFuncMacro Green
highlight! link TSFunction Green
highlight! link TSFunctionCall Green
highlight! link TSInclude Red
highlight! link TSKeyword Red
highlight! link TSKeywordFunction Red
highlight! link TSKeywordOperator Red
highlight! link TSKeywordReturn Red
highlight! link TSLabel Red
highlight! link TSLiteral String
highlight! link TSMath Yellow
highlight! link TSMethod Green
highlight! link TSMethodCall Green
highlight! link TSNamespace BlueItalic
highlight! link TSNone Fg
highlight! link TSNumber Purple
highlight! link TSOperator Red
highlight! link TSParameter Fg
highlight! link TSParameterReference Fg
highlight! link TSPreProc PreProc
highlight! link TSProperty Orange
highlight! link TSPunctBracket Grey
highlight! link TSPunctDelimiter Grey
highlight! link TSPunctSpecial Yellow
highlight! link TSRepeat Red
highlight! link TSStorageClass Red
highlight! link TSStorageClassLifetime Red
highlight! link TSStrike Grey
highlight! link TSString Yellow
highlight! link TSStringEscape Green
highlight! link TSStringRegex Green
highlight! link TSStringSpecial SpecialChar
highlight! link TSSymbol Fg
highlight! link TSTag BlueItalic
highlight! link TSTagAttribute Green
highlight! link TSTagDelimiter Red
highlight! link TSText Green
highlight! link TSTextReference Constant
highlight! link TSTitle Title
highlight! link TSTodo Todo
highlight! link TSType BlueItalic
highlight! link TSTypeBuiltin BlueItalic
highlight! link TSTypeDefinition BlueItalic
highlight! link TSTypeQualifier Red
highlight! link TSURI markdownUrl
highlight! link TSVariable Fg
highlight! link TSVariableBuiltin PurpleItalic
if has('nvim-0.8.0')
  highlight! link @annotation TSAnnotation
  highlight! link @attribute TSAttribute
  highlight! link @boolean TSBoolean
  highlight! link @character TSCharacter
  highlight! link @character.special TSCharacterSpecial
  highlight! link @comment TSComment
  highlight! link @conceal Grey
  highlight! link @conditional TSConditional
  highlight! link @constant TSConstant
  highlight! link @constant.builtin TSConstBuiltin
  highlight! link @constant.macro TSConstMacro
  highlight! link @constructor TSConstructor
  highlight! link @debug TSDebug
  highlight! link @define TSDefine
  highlight! link @error TSError
  highlight! link @exception TSException
  highlight! link @field TSField
  highlight! link @float TSFloat
  highlight! link @function TSFunction
  highlight! link @function.builtin TSFuncBuiltin
  highlight! link @function.call TSFunctionCall
  highlight! link @function.macro TSFuncMacro
  highlight! link @include TSInclude
  highlight! link @keyword TSKeyword
  highlight! link @keyword.function TSKeywordFunction
  highlight! link @keyword.operator TSKeywordOperator
  highlight! link @keyword.return TSKeywordReturn
  highlight! link @label TSLabel
  highlight! link @math TSMath
  highlight! link @method TSMethod
  highlight! link @method.call TSMethodCall
  highlight! link @namespace TSNamespace
  highlight! link @none TSNone
  highlight! link @number TSNumber
  highlight! link @operator TSOperator
  highlight! link @parameter TSParameter
  highlight! link @parameter.reference TSParameterReference
  highlight! link @preproc TSPreProc
  highlight! link @property TSProperty
  highlight! link @punctuation.bracket TSPunctBracket
  highlight! link @punctuation.delimiter TSPunctDelimiter
  highlight! link @punctuation.special TSPunctSpecial
  highlight! link @repeat TSRepeat
  highlight! link @storageclass TSStorageClass
  highlight! link @storageclass.lifetime TSStorageClassLifetime
  highlight! link @strike TSStrike
  highlight! link @string TSString
  highlight! link @string.escape TSStringEscape
  highlight! link @string.regex TSStringRegex
  highlight! link @string.special TSStringSpecial
  highlight! link @symbol TSSymbol
  highlight! link @tag TSTag
  highlight! link @tag.attribute TSTagAttribute
  highlight! link @tag.delimiter TSTagDelimiter
  highlight! link @text TSText
  highlight! link @text.danger TSDanger
  highlight! link @text.diff.add diffAdded
  highlight! link @text.diff.delete diffRemoved
  highlight! link @text.emphasis TSEmphasis
  highlight! link @text.environment TSEnvironment
  highlight! link @text.environment.name TSEnvironmentName
  highlight! link @text.literal TSLiteral
  highlight! link @text.math TSMath
  highlight! link @text.note TSNote
  highlight! link @text.reference TSTextReference
  highlight! link @text.strike TSStrike
  highlight! link @text.strong TSStrong
  highlight! link @text.title TSTitle
  highlight! link @text.todo TSTodo
  highlight! link @text.underline TSUnderline
  highlight! link @text.uri TSURI
  highlight! link @text.warning TSWarning
  highlight! link @todo TSTodo
  highlight! link @type TSType
  highlight! link @type.builtin TSTypeBuiltin
  highlight! link @type.definition TSTypeDefinition
  highlight! link @type.qualifier TSTypeQualifier
  highlight! link @uri TSURI
  highlight! link @variable TSVariable
  highlight! link @variable.builtin TSVariableBuiltin
endif
" }}}
" github/copilot.vim {{{
highlight! link CopilotSuggestion Grey
" }}}
" neoclide/coc.nvim {{{
call sonokai#highlight('CocHoverRange', s:palette.none, s:palette.none, 'bold,underline')
call sonokai#highlight('CocSearch', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('CocPumSearch', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('CocMarkdownHeader', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('CocMarkdownLink', s:palette.green, s:palette.none, 'underline')
highlight! link CocMarkdownCode Green
highlight! link CocPumShortcut Grey
highlight! link CocPumVirtualText Grey
highlight! link CocPumMenu Pmenu
highlight! link CocMenuSel PmenuSel
highlight! link CocDisabled Grey
highlight! link CocSnippetVisual DiffAdd
highlight! link CocInlayHint LineNr
highlight! link CocNotificationProgress Green
highlight! link CocNotificationButton PmenuSel
highlight! link CocSemClass TSType
highlight! link CocSemEnum TSType
highlight! link CocSemInterface TSType
highlight! link CocSemStruct TSType
highlight! link CocSemTypeParameter TSType
highlight! link CocSemVariable TSVariable
highlight! link CocSemEnumMember TSProperty
highlight! link CocSemEvent TSLabel
highlight! link CocSemModifier TSOperator
highlight! link CocErrorFloat ErrorFloat
highlight! link CocWarningFloat WarningFloat
highlight! link CocInfoFloat InfoFloat
highlight! link CocHintFloat HintFloat
highlight! link CocFloatDividingLine Grey
highlight! link CocErrorHighlight ErrorText
highlight! link CocWarningHighlight WarningText
highlight! link CocInfoHighlight InfoText
highlight! link CocHintHighlight HintText
highlight! link CocHighlightText CurrentWord
highlight! link CocHoverRange CurrentWord
highlight! link CocErrorSign RedSign
highlight! link CocWarningSign YellowSign
highlight! link CocInfoSign BlueSign
highlight! link CocHintSign GreenSign
highlight! link CocWarningVirtualText VirtualTextWarning
highlight! link CocErrorVirtualText VirtualTextError
highlight! link CocInfoVirtualText VirtualTextInfo
highlight! link CocHintVirtualText VirtualTextHint
highlight! link CocErrorLine ErrorLine
highlight! link CocWarningLine WarningLine
highlight! link CocInfoLine InfoLine
highlight! link CocHintLine HintLine
highlight! link CocCodeLens Grey
highlight! link CocFadeOut Grey
highlight! link CocStrikeThrough Grey
highlight! link CocListMode StatusLine
highlight! link CocListPath StatusLine
highlight! link CocSelectedText Red
highlight! link CocListsLine Fg
highlight! link CocListsDesc Grey
highlight! link HighlightedyankRegion Visual
highlight! link CocGitAddedSign GreenSign
highlight! link CocGitChangeRemovedSign PurpleSign
highlight! link CocGitChangedSign BlueSign
highlight! link CocGitRemovedSign RedSign
highlight! link CocGitTopRemovedSign RedSign
" }}}
" prabirshrestha/vim-lsp {{{
highlight! link LspErrorVirtual VirtualTextError
highlight! link LspWarningVirtual VirtualTextWarning
highlight! link LspInformationVirtual VirtualTextInfo
highlight! link LspHintVirtual VirtualTextHint
highlight! link LspErrorHighlight ErrorText
highlight! link LspWarningHighlight WarningText
highlight! link LspInformationHighlight InfoText
highlight! link LspHintHighlight HintText
highlight! link lspReference CurrentWord
highlight! link lspInlayHintsType LineNr
highlight! link lspInlayHintsParameter LineNr
highlight! link LspSemanticType TSType
highlight! link LspSemanticClass TSType
highlight! link LspSemanticEnum TSType
highlight! link LspSemanticInterface TSType
highlight! link LspSemanticStruct TSType
highlight! link LspSemanticTypeParameter TSType
highlight! link LspSemanticParameter TSParameter
highlight! link LspSemanticVariable TSVariable
highlight! link LspSemanticProperty TSProperty
highlight! link LspSemanticEnumMember TSProperty
highlight! link LspSemanticEvents TSLabel
highlight! link LspSemanticFunction TSFunction
highlight! link LspSemanticMethod TSMethod
highlight! link LspSemanticKeyword TSKeyword
highlight! link LspSemanticModifier TSOperator
highlight! link LspSemanticComment TSComment
highlight! link LspSemanticString TSString
highlight! link LspSemanticNumber TSNumber
highlight! link LspSemanticRegexp TSStringRegex
highlight! link LspSemanticOperator TSOperator
" }}}
" ycm-core/YouCompleteMe {{{
highlight! link YcmErrorSign RedSign
highlight! link YcmWarningSign YellowSign
highlight! link YcmErrorLine ErrorLine
highlight! link YcmWarningLine WarningLine
highlight! link YcmErrorSection ErrorText
highlight! link YcmWarningSection WarningText
highlight! link YcmInlayHint LineNr
highlight! link YcmErrorText VirtualTextError
highlight! link YcmWarningText VirtualTextWarning
if !has('nvim') && has('textprop') && !exists('g:YCM_HIGHLIGHT_GROUP')
  let g:YCM_HIGHLIGHT_GROUP = {
        \ 'typeParameter': 'TSType',
        \ 'parameter': 'TSParameter',
        \ 'variable': 'TSVariable',
        \ 'property': 'TSProperty',
        \ 'enumMember': 'TSVariableBuiltin',
        \ 'event': 'TSLabel',
        \ 'member': 'TSVariable',
        \ 'method': 'TSMethod',
        \ 'class': 'TSType',
        \ 'namespace': 'TSNamespace',
        \ }
  for tokenType in keys( g:YCM_HIGHLIGHT_GROUP )
    try
      call prop_type_add( 'YCM_HL_' . tokenType,
            \ { 'highlight': g:YCM_HIGHLIGHT_GROUP[ tokenType ] } )
    catch
    endtry
  endfor
endif
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
highlight! link ALEVirtualTextError VirtualTextError
highlight! link ALEVirtualTextWarning VirtualTextWarning
highlight! link ALEVirtualTextInfo VirtualTextInfo
highlight! link ALEVirtualTextStyleError VirtualTextHint
highlight! link ALEVirtualTextStyleWarning VirtualTextHint
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
highlight! link NeomakeVirtualtextError VirtualTextError
highlight! link NeomakeVirtualtextWarning VirtualTextWarning
highlight! link NeomakeVirtualtextInfo VirtualTextInfo
highlight! link NeomakeVirtualtextMessag VirtualTextHint
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
call sonokai#highlight('Lf_hl_popup_normalMode', s:palette.bg0, s:palette.blue, 'bold')
call sonokai#highlight('Lf_hl_popup_inputMode', s:palette.bg0, s:palette.green, 'bold')
call sonokai#highlight('Lf_hl_popup_category', s:palette.fg, s:palette.bg4)
call sonokai#highlight('Lf_hl_popup_nameOnlyMode', s:palette.fg, s:palette.bg3)
call sonokai#highlight('Lf_hl_popup_fullPathMode', s:palette.fg, s:palette.bg3)
call sonokai#highlight('Lf_hl_popup_fuzzyMode', s:palette.fg, s:palette.bg3)
call sonokai#highlight('Lf_hl_popup_regexMode', s:palette.fg, s:palette.bg3)
call sonokai#highlight('Lf_hl_popup_lineInfo', s:palette.bg0, s:palette.blue)
call sonokai#highlight('Lf_hl_popup_total', s:palette.bg0, s:palette.red)
call sonokai#highlight('Lf_hl_popup_cursor', s:palette.bg0, s:palette.blue)
highlight! link Lf_hl_cursorline Fg
highlight! link Lf_hl_selection DiffAdd
highlight! link Lf_hl_rgHighlight Visual
highlight! link Lf_hl_gtagsHighlight Visual
highlight! link Lf_hl_popup_inputText Pmenu
highlight! link Lf_hl_popup_window Pmenu
highlight! link Lf_hl_popup_prompt Blue
highlight! link Lf_hl_popup_cwd Pmenu
highlight! link Lf_hl_popup_blank Lf_hl_popup_window
highlight! link Lf_hl_popup_spin Purple
" }}}
" liuchengxu/vim-clap {{{
call sonokai#highlight('ClapSelected', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('ClapCurrentSelection', s:palette.none, s:palette.bg0, 'bold')
call sonokai#highlight('ClapSpinner', s:palette.blue, s:palette.bg2, 'bold')
call sonokai#highlight('ClapBlines', s:palette.fg, s:palette.none)
call sonokai#highlight('ClapProviderId', s:palette.fg, s:palette.none, 'bold')
call sonokai#highlight('ClapMatches1', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('ClapMatches2', s:palette.orange, s:palette.none, 'bold')
call sonokai#highlight('ClapMatches3', s:palette.yellow, s:palette.none, 'bold')
call sonokai#highlight('ClapMatches4', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('ClapMatches5', s:palette.purple, s:palette.none, 'bold')
call sonokai#highlight('ClapFuzzyMatches', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('ClapNoMatchesFound', s:palette.red, s:palette.none, 'bold')
highlight! link ClapInput Pmenu
highlight! link ClapDisplay Pmenu
highlight! link ClapPreview Pmenu
highlight! link ClapFuzzyMatches1 ClapFuzzyMatches
highlight! link ClapFuzzyMatches2 ClapFuzzyMatches
highlight! link ClapFuzzyMatches3 ClapFuzzyMatches
highlight! link ClapFuzzyMatches4 ClapFuzzyMatches
highlight! link ClapFuzzyMatches5 ClapFuzzyMatches
highlight! link ClapFuzzyMatches6 ClapFuzzyMatches
highlight! link ClapFuzzyMatches7 ClapFuzzyMatches
highlight! link ClapFuzzyMatches8 ClapFuzzyMatches
highlight! link ClapFuzzyMatches9 ClapFuzzyMatches
highlight! link ClapFuzzyMatches10 ClapFuzzyMatches
highlight! link ClapFuzzyMatches11 ClapFuzzyMatches
highlight! link ClapFuzzyMatches12 ClapFuzzyMatches
highlight! link ClapBlinesLineNr Grey
highlight! link ClapProviderColon ClapBlines
highlight! link ClapProviderAbout ClapBlines
highlight! link ClapFile Fg
highlight! link ClapSearchText ClapFuzzyMatches
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
      \ 'border':  ['fg', 'Grey'],
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
highlight! link GitGutterAddLine DiffAdd
highlight! link GitGutterChangeLine DiffChange
highlight! link GitGutterDeleteLine DiffDelete
highlight! link GitGutterChangeDeleteLine DiffChange
highlight! link GitGutterAddLineNr Green
highlight! link GitGutterChangeLineNr Blue
highlight! link GitGutterDeleteLineNr Red
highlight! link GitGutterChangeDeleteLineNr Purple
" }}}
" mhinz/vim-signify {{{
highlight! link SignifySignAdd GreenSign
highlight! link SignifySignChange BlueSign
highlight! link SignifySignDelete RedSign
highlight! link SignifySignChangeDelete PurpleSign
highlight! link SignifyLineAdd DiffAdd
highlight! link SignifyLineChange DiffChange
highlight! link SignifyLineChangeDelete DiffChange
highlight! link SignifyLineDelete DiffDelete
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
" rhysd/clever-f.vim {{{
highlight! link CleverFDefaultLabel Search
" }}}
" terryma/vim-multiple-cursors {{{
highlight! link multiple_cursors_cursor Cursor
highlight! link multiple_cursors_visual Visual
" }}}
" mg979/vim-visual-multi {{{
call sonokai#highlight('VMCursor', s:palette.blue, s:palette.grey_dim)
let g:VM_Mono_hl = 'VMCursor'
let g:VM_Extend_hl = 'Visual'
let g:VM_Cursor_hl = 'VMCursor'
let g:VM_Insert_hl = 'VMCursor'
" }}}
" dominikduda/vim_current_word {{{
highlight! link CurrentWordTwins CurrentWord
" }}}
" RRethy/vim-illuminate {{{
highlight! link illuminatedWord CurrentWord
highlight! link IlluminatedWordText CurrentWord
highlight! link IlluminatedWordRead CurrentWord
highlight! link IlluminatedWordWrite CurrentWord
" }}}
" itchyny/vim-cursorword {{{
highlight! link CursorWord0 CurrentWord
highlight! link CursorWord1 CurrentWord
" }}}
" Yggdroot/indentLine {{{
let g:indentLine_color_gui = s:palette.grey_dim[0]
let g:indentLine_color_term = s:palette.grey_dim[1]
" }}}
" nathanaelkane/vim-indent-guides {{{
if get(g:, 'indent_guides_auto_colors', 1) == 0
  call sonokai#highlight('IndentGuidesOdd', s:palette.bg0, s:palette.bg1)
  call sonokai#highlight('IndentGuidesEven', s:palette.bg0, s:palette.bg2)
endif
" }}}
" thiagoalessio/rainbow_levels.vim {{{
highlight! link RainbowLevel0 Red
highlight! link RainbowLevel1 Orange
highlight! link RainbowLevel2 Yellow
highlight! link RainbowLevel3 Green
highlight! link RainbowLevel4 Blue
highlight! link RainbowLevel5 Purple
highlight! link RainbowLevel6 Yellow
highlight! link RainbowLevel7 Green
highlight! link RainbowLevel8 Blue
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
" junegunn/limelight.vim {{{
let g:limelight_conceal_ctermfg = s:palette.grey_dim[1]
let g:limelight_conceal_guifg = s:palette.grey_dim[0]
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
" voldikss/vim-floaterm {{{
highlight! link FloatermBorder Grey
" }}}
" MattesGroeger/vim-bookmarks {{{
highlight! link BookmarkSign BlueSign
highlight! link BookmarkAnnotationSign GreenSign
highlight! link BookmarkLine DiffChange
highlight! link BookmarkAnnotationLine DiffAdd
" }}}
if has('nvim')
" hrsh7th/nvim-cmp {{{
call sonokai#highlight('CmpItemAbbrMatch', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('CmpItemAbbrMatchFuzzy', s:palette.green, s:palette.none, 'bold')
highlight! link CmpItemAbbr Fg
highlight! link CmpItemAbbrDeprecated Grey
highlight! link CmpItemMenu Fg
highlight! link CmpItemKind Blue
for kind in g:sonokai_lsp_kind_color
  execute "highlight! link CmpItemKind" . kind[0] . " " . kind[1]
endfor
" }}}
" SmiteshP/nvim-navic {{{
highlight! link NavicText Fg
highlight! link NavicSeparator Grey
for kind in g:sonokai_lsp_kind_color
  execute "highlight! link NavicIcons" . kind[0] . " " . kind[1]
endfor
" folke/trouble.nvim {{{
highlight! link TroubleText Fg
highlight! link TroubleSource Grey
highlight! link TroubleCode Grey
" }}}
" nvim-telescope/telescope.nvim {{{
call sonokai#highlight('TelescopeMatching', s:palette.green, s:palette.none, 'bold')
highlight! link TelescopeBorder Grey
highlight! link TelescopePromptPrefix Blue
highlight! link TelescopeSelection DiffAdd
" }}}
" lewis6991/gitsigns.nvim {{{
highlight! link GitSignsAdd GreenSign
highlight! link GitSignsChange BlueSign
highlight! link GitSignsDelete RedSign
highlight! link GitSignsAddNr Green
highlight! link GitSignsChangeNr Blue
highlight! link GitSignsDeleteNr Red
highlight! link GitSignsAddLn DiffAdd
highlight! link GitSignsChangeLn DiffChange
highlight! link GitSignsDeleteLn DiffDelete
highlight! link GitSignsCurrentLineBlame Grey
" }}}
" phaazon/hop.nvim {{{
call sonokai#highlight('HopNextKey', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('HopNextKey1', s:palette.blue, s:palette.none, 'bold')
highlight! link HopNextKey2 Blue
highlight! link HopUnmatched Grey
" }}}
" lukas-reineke/indent-blankline.nvim {{{
call sonokai#highlight('IndentBlanklineContextChar', s:palette.grey, s:palette.none, 'nocombine')
call sonokai#highlight('IndentBlanklineChar', s:palette.grey_dim, s:palette.none, 'nocombine')
highlight! link IndentBlanklineSpaceChar IndentBlanklineChar
highlight! link IndentBlanklineSpaceCharBlankline IndentBlanklineChar
" }}}
" p00f/nvim-ts-rainbow {{{
highlight! link rainbowcol1 Red
highlight! link rainbowcol2 Orange
highlight! link rainbowcol3 Yellow
highlight! link rainbowcol4 Green
highlight! link rainbowcol5 Blue
highlight! link rainbowcol6 Purple
highlight! link rainbowcol7 Green
" }}}
" romgrk/barbar.nvim {{{
call sonokai#highlight('BufferCurrent', s:palette.fg, s:palette.bg0)
call sonokai#highlight('BufferCurrentIndex', s:palette.fg, s:palette.bg0)
call sonokai#highlight('BufferCurrentMod', s:palette.blue, s:palette.bg0)
call sonokai#highlight('BufferCurrentSign', s:palette.red, s:palette.bg0)
call sonokai#highlight('BufferCurrentTarget', s:palette.red, s:palette.bg0, 'bold')
call sonokai#highlight('BufferVisible', s:palette.fg, s:palette.bg_dim)
call sonokai#highlight('BufferVisibleIndex', s:palette.fg, s:palette.bg_dim)
call sonokai#highlight('BufferVisibleMod', s:palette.blue, s:palette.bg_dim)
call sonokai#highlight('BufferVisibleSign', s:palette.red, s:palette.bg_dim)
call sonokai#highlight('BufferVisibleTarget', s:palette.yellow, s:palette.bg_dim, 'bold')
call sonokai#highlight('BufferInactive', s:palette.grey, s:palette.bg_dim)
call sonokai#highlight('BufferInactiveIndex', s:palette.grey, s:palette.bg_dim)
call sonokai#highlight('BufferInactiveMod', s:palette.grey, s:palette.bg_dim)
call sonokai#highlight('BufferInactiveSign', s:palette.grey_dim, s:palette.bg_dim)
call sonokai#highlight('BufferInactiveTarget', s:palette.yellow, s:palette.bg_dim, 'bold')
call sonokai#highlight('BufferTabpages', s:palette.grey, s:palette.bg_dim, 'bold')
call sonokai#highlight('BufferTabpageFill', s:palette.bg_dim, s:palette.bg_dim)
" }}}
" rcarriga/nvim-notify {{{
highlight! link NotifyERRORBorder Red
highlight! link NotifyWARNBorder Yellow
highlight! link NotifyINFOBorder Green
highlight! link NotifyDEBUGBorder Grey
highlight! link NotifyTRACEBorder Purple
highlight! link NotifyERRORIcon Red
highlight! link NotifyWARNIcon Yellow
highlight! link NotifyINFOIcon Green
highlight! link NotifyDEBUGIcon Grey
highlight! link NotifyTRACEIcon Purple
highlight! link NotifyERRORTitle Red
highlight! link NotifyWARNTitle Yellow
highlight! link NotifyINFOTitle Green
highlight! link NotifyDEBUGTitle Grey
highlight! link NotifyTRACETitle Purple
" }}}
" rcarriga/nvim-dap-ui {{{
call sonokai#highlight('DapUIModifiedValue', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('DapUIBreakpointsCurrentLine', s:palette.blue, s:palette.none, 'bold')
highlight! link DapUIScope Blue
highlight! link DapUIType Purple
highlight! link DapUIDecoration Blue
highlight! link DapUIThread Green
highlight! link DapUIStoppedThread Blue
highlight! link DapUISource Purple
highlight! link DapUILineNumber Blue
highlight! link DapUIFloatBorder Blue
highlight! link DapUIWatchesEmpty Red
highlight! link DapUIWatchesValue Green
highlight! link DapUIWatchesError Red
highlight! link DapUIBreakpointsPath Blue
highlight! link DapUIBreakpointsInfo Green
" }}}
" glepnir/lspsaga.nvim {{{
call sonokai#highlight('LspFloatWinBorder', s:palette.bg0, s:palette.bg0)
call sonokai#highlight('LspSagaDiagnosticHeader', s:palette.orange, s:palette.none, 'bold')
call sonokai#highlight('LspSagaCodeActionTitle', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('DefinitionPreviewTitle', s:palette.purple, s:palette.none, 'bold')
highlight! link LspSagaDiagnosticError Red
highlight! link LspSagaDiagnosticWarn Yellow
highlight! link LspSagaDiagnosticInfo Blue
highlight! link LspSagaDiagnosticHint Green
highlight! link LspSagaErrorTrunCateLine LspSagaDiagnosticError
highlight! link LspSagaWarnTrunCateLine LspSagaDiagnosticWarn
highlight! link LspSagaInfoTrunCateLine LspSagaDiagnosticInfo
highlight! link LspSagaHintTrunCateLine LspSagaDiagnosticHint
highlight! link LspSagaDiagnosticSource Orange
highlight! link LspSagaDiagnosticBorder Orange
highlight! link LspSagaRenameBorder Blue
highlight! link LspSagaRenamePromptPrefix Red
highlight! link LspSagaCodeActionBorder Blue
highlight! link LspSagaCodeActionTruncateLine Blue
highlight! link LspSagaCodeActionContent Green
highlight! link LspSagaHoverBorder Green
highlight! link LspSagaDocTruncateLine Green
highlight! link LspSagaSignatureHelpBorder Green
highlight! link LspSagaShTruncateLine Green
highlight! link LspSagaDefPreviewBorder Purple
highlight! link DefinitionIcon Purple
highlight! link LspLinesDiagBorder Yellow
highlight! link LineDiagTuncateLine Yellow
highlight! link LspSagaAutoPreview Blue
highlight! link LspSagaFinderSelection Fg
highlight! link DiagnosticWarning DiagnosticWarn
highlight! link DiagnosticInformation DiagnosticInfo
highlight! link ReferencesCount Grey
highlight! link DefinitionCount Grey
highlight! link TargetFileName Grey
" }}}
" b0o/incline.nvim {{{
call sonokai#highlight('InclineNormalNC', s:palette.grey, s:palette.bg2)
" }}}
" echasnovski/mini.nvim {{{
call sonokai#highlight('MiniIndentscopePrefix', s:palette.none, s:palette.none, 'nocombine')
call sonokai#highlight('MiniJump2dSpot', s:palette.red, s:palette.none, 'bold,nocombine')
call sonokai#highlight('MiniStarterCurrent', s:palette.none, s:palette.none, 'nocombine')
call sonokai#highlight('MiniStatuslineDevinfo', s:palette.fg, s:palette.bg3)
call sonokai#highlight('MiniStatuslineFileinfo', s:palette.fg, s:palette.bg3)
call sonokai#highlight('MiniStatuslineFilename', s:palette.grey, s:palette.bg1)
call sonokai#highlight('MiniStatuslineModeInactive', s:palette.grey, s:palette.bg1)
call sonokai#highlight('MiniStatuslineModeCommand', s:palette.bg0, s:palette.yellow, 'bold')
call sonokai#highlight('MiniStatuslineModeInsert', s:palette.bg0, s:palette.bg_green, 'bold')
call sonokai#highlight('MiniStatuslineModeNormal', s:palette.bg0, s:palette.bg_blue, 'bold')
call sonokai#highlight('MiniStatuslineModeOther', s:palette.bg0, s:palette.purple, 'bold')
call sonokai#highlight('MiniStatuslineModeReplace', s:palette.bg0, s:palette.orange, 'bold')
call sonokai#highlight('MiniStatuslineModeVisual', s:palette.bg0, s:palette.bg_red, 'bold')
call sonokai#highlight('MiniTablineCurrent', s:palette.fg, s:palette.bg4)
call sonokai#highlight('MiniTablineHidden', s:palette.grey, s:palette.bg2)
call sonokai#highlight('MiniTablineModifiedCurrent', s:palette.blue, s:palette.bg4)
call sonokai#highlight('MiniTablineModifiedHidden', s:palette.grey, s:palette.bg2)
call sonokai#highlight('MiniTablineModifiedVisible', s:palette.blue, s:palette.bg2)
call sonokai#highlight('MiniTablineTabpagesection', s:palette.bg0, s:palette.blue, 'bold')
call sonokai#highlight('MiniTablineVisible', s:palette.fg, s:palette.bg2)
call sonokai#highlight('MiniTestEmphasis', s:palette.none, s:palette.none, 'bold')
call sonokai#highlight('MiniTestFail', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('MiniTestPass', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('MiniTrailspace', s:palette.none, s:palette.red)
highlight! link MiniStarterItemBullet Grey
highlight! link MiniStarterItemPrefix Yellow
highlight! link MiniStarterQuery Blue
highlight! link MiniCompletionActiveParameter LspSignatureActiveParameter
highlight! link MiniCursorword CurrentWord
highlight! link MiniCursorwordCurrent CurrentWord
highlight! link MiniIndentscopeSymbol Grey
highlight! link MiniJump Search
highlight! link MiniStarterFooter Yellow
highlight! link MiniStarterHeader Purple
highlight! link MiniStarterInactive Comment
highlight! link MiniStarterItem Normal
highlight! link MiniStarterSection Title
highlight! link MiniSurround IncSearch
highlight! link MiniTablineFill TabLineFill
" }}}
" ggandor/lightspeed.nvim {{{
call sonokai#highlight('LightspeedLabel', s:palette.red, s:palette.none, 'bold,underline')
call sonokai#highlight('LightspeedLabelDistant', s:palette.blue, s:palette.none, 'bold,underline')
call sonokai#highlight('LightspeedShortcut', s:palette.bg0, s:palette.red, 'bold')
call sonokai#highlight('LightspeedUnlabeledMatch', s:palette.fg, s:palette.none, 'bold')
call sonokai#highlight('LightspeedPendingOpArea', s:palette.bg0, s:palette.green)
highlight! link LightspeedMaskedChar Purple
highlight! link LightspeedGreyWash Grey
" }}}
endif
" }}}
" Extended File Types: {{{
" Whitelist: {{{ File type optimizations that will always be loaded.
" diff {{{
highlight! link diffAdded Green
highlight! link diffRemoved Red
highlight! link diffChanged Blue
highlight! link diffOldFile Yellow
highlight! link diffNewFile Orange
highlight! link diffFile Purple
highlight! link diffLine Grey
highlight! link diffIndexLine Purple
" }}}
" }}}
" Generate the `after/syntax` directory based on the comment tags in this file.
" For example, the content between `syn_begin: sh/zsh` and `syn_end` will be placed in `after/syntax/sh/sonokai.vim` and `after/syntax/zsh/sonokai.vim`.
if sonokai#syn_exists(s:path) " If the syntax files exist.
  if s:configuration.better_performance
    if !sonokai#syn_newest(s:path, s:last_modified) " Regenerate if it's not up to date.
      call sonokai#syn_clean(s:path, 0)
      call sonokai#syn_gen(s:path, s:last_modified, 'update')
    endif
    finish
  else
    call sonokai#syn_clean(s:path, 1)
  endif
else
  if s:configuration.better_performance
    call sonokai#syn_gen(s:path, s:last_modified, 'generate')
    finish
  endif
endif
" syn_begin: vim-plug {{{
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
" syn_end }}}
" syn_begin: packer {{{
" https://github.com/wbthomason/packer.nvim
highlight! link packerSuccess Green
highlight! link packerFail Red
highlight! link packerStatusSuccess Fg
highlight! link packerStatusFail Fg
highlight! link packerWorking Yellow
highlight! link packerString Yellow
highlight! link packerPackageNotLoaded Grey
highlight! link packerRelDate Grey
highlight! link packerPackageName Blue
highlight! link packerOutput Orange
highlight! link packerHash Blue
highlight! link packerTimeTrivial Blue
highlight! link packerTimeHigh Red
highlight! link packerTimeMedium Yellow
highlight! link packerTimeLow Green
" syn_end }}}
" syn_begin: coctree {{{
" https://github.com/neoclide/coc.nvim
highlight! link CocTreeOpenClose Purple
highlight! link CocTreeDescription Grey
for kind in g:sonokai_lsp_kind_color
  execute "highlight! link CocSymbol" . kind[0] . " " . kind[1]
endfor
" syn_end }}}
" syn_begin: coc-explorer {{{
" https://github.com/weirongxu/coc-explorer
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
highlight! link CocExplorerDiagnosticError Red
highlight! link CocExplorerDiagnosticWarning Yellow
highlight! link CocExplorerFileHidden Grey
" syn_end }}}
" syn_begin: tagbar {{{
" https://github.com/majutsushi/tagbar
highlight! link TagbarFoldIcon Blue
highlight! link TagbarSignature Green
highlight! link TagbarKind Red
highlight! link TagbarScope Orange
highlight! link TagbarNestedKind Blue
highlight! link TagbarVisibilityPrivate Red
highlight! link TagbarVisibilityPublic Blue
" syn_end }}}
" syn_begin: vista/vista_kind/vista_markdown {{{
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
" syn_end }}}
" syn_begin: Outline {{{
" https://github.com/simrat39/symbols-outline.nvim
highlight! link FocusedSymbol NormalFloat
" syn_end }}}
" syn_begin: aerial {{{
" https://github.com/stevearc/aerial.nvim
highlight! link AerialLine CursorLine
highlight! link AerialGuide LineNr
for kind in g:sonokai_lsp_kind_color
  execute "highlight! link Aerial" . kind[0] . "Icon " . kind[1]
endfor
" syn_end }}}
" syn_begin: nerdtree {{{
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
" syn_end }}}
" syn_begin: dirvish {{{
" https://github.com/justinmk/vim-dirvish
highlight! link DirvishPathTail Blue
highlight! link DirvishArg Yellow
" syn_end }}}
" syn_begin: NvimTree {{{
" https://github.com/kyazdani42/nvim-tree.lua
if !s:configuration.transparent_background
  call sonokai#highlight('NvimTreeNormal', s:palette.fg, s:palette.bg_dim)
  call sonokai#highlight('NvimTreeEndOfBuffer', s:palette.bg_dim, s:palette.bg_dim)
  call sonokai#highlight('NvimTreeVertSplit', s:palette.bg0, s:palette.bg0)
  call sonokai#highlight('NvimTreeCursorLine', s:palette.none, s:palette.bg0)
endif
highlight! link NvimTreeSymlink Fg
highlight! link NvimTreeFolderName Green
highlight! link NvimTreeRootFolder Grey
highlight! link NvimTreeFolderIcon Blue
highlight! link NvimTreeEmptyFolderName Green
highlight! link NvimTreeOpenedFolderName Green
highlight! link NvimTreeExecFile Fg
highlight! link NvimTreeOpenedFile Fg
highlight! link NvimTreeSpecialFile Fg
highlight! link NvimTreeImageFile Fg
highlight! link NvimTreeMarkdownFile Fg
highlight! link NvimTreeIndentMarker Grey
highlight! link NvimTreeGitDirty Yellow
highlight! link NvimTreeGitStaged Blue
highlight! link NvimTreeGitMerge Orange
highlight! link NvimTreeGitRenamed Purple
highlight! link NvimTreeGitNew Green
highlight! link NvimTreeGitDeleted Red
highlight! link NvimTreeLspDiagnosticsError RedSign
highlight! link NvimTreeLspDiagnosticsWarning YellowSign
highlight! link NvimTreeLspDiagnosticsInformation BlueSign
highlight! link NvimTreeLspDiagnosticsHint GreenSign
" syn_end }}}
" syn_begin: fern {{{
" https://github.com/lambdalisue/fern.vim
highlight! link FernMarkedLine Purple
highlight! link FernMarkedText Purple
highlight! link FernRootSymbol FernRootText
highlight! link FernRootText Blue
highlight! link FernLeafSymbol FernLeafText
highlight! link FernLeafText Fg
highlight! link FernBranchSymbol FernBranchText
highlight! link FernBranchText Green
highlight! link FernWindowSelectIndicator TabLineSel
highlight! link FernWindowSelectStatusLine TabLine
" syn_end }}}
" syn_begin: neo-tree {{{
" https://github.com/nvim-neo-tree/neo-tree.nvim
if !s:configuration.transparent_background
  call sonokai#highlight('NeoTreeNormal', s:palette.fg, s:palette.bg_dim)
  call sonokai#highlight('NeoTreeEndOfBuffer', s:palette.bg_dim, s:palette.bg_dim)
  call sonokai#highlight('NeoTreeVertSplit', s:palette.bg0, s:palette.bg0)
endif
highlight! link NeoTreeGitAdded Green
highlight! link NeoTreeGitConflict Yellow
highlight! link NeoTreeGitDeleted Red
highlight! link NeoTreeGitIgnored Grey
highlight! link NeoTreeGitModified Blue
highlight! link NeoTreeGitUnstaged Purple
highlight! link NeoTreeGitUntracked Fg
highlight! link NeoTreeGitStaged Purple
highlight! link NeoTreeDimText Grey
highlight! link NeoTreeIndentMarker NonText
highlight! link NeoTreeNormalNC NeoTreeNormal
highlight! link NeoTreeSignColumn NeoTreeNormal
highlight! link NeoTreeRootName Title
" syn_end }}}
" syn_begin: octo {{{
" https://github.com/pwntester/octo.nvim
call sonokai#highlight('OctoViewer', s:palette.bg0, s:palette.blue)
call sonokai#highlight('OctoGreenFloat', s:palette.green, s:palette.bg2)
call sonokai#highlight('OctoRedFloat', s:palette.red, s:palette.bg2)
call sonokai#highlight('OctoPurpleFloat', s:palette.purple, s:palette.bg2)
call sonokai#highlight('OctoYellowFloat', s:palette.yellow, s:palette.bg2)
call sonokai#highlight('OctoBlueFloat', s:palette.blue, s:palette.bg2)
call sonokai#highlight('OctoGreyFloat', s:palette.grey, s:palette.bg2)
call sonokai#highlight('OctoBubbleGreen', s:palette.bg0, s:palette.green)
call sonokai#highlight('OctoBubbleRed', s:palette.bg0, s:palette.red)
call sonokai#highlight('OctoBubblePurple', s:palette.bg0, s:palette.purple)
call sonokai#highlight('OctoBubbleYellow', s:palette.bg0, s:palette.yellow)
call sonokai#highlight('OctoBubbleBlue', s:palette.bg0, s:palette.blue)
call sonokai#highlight('OctoBubbleGrey', s:palette.bg0, s:palette.grey)
highlight! link OctoGreen Green
highlight! link OctoRed Red
highlight! link OctoPurple Purple
highlight! link OctoYellow Yellow
highlight! link OctoBlue Blue
highlight! link OctoGrey Grey
highlight! link OctoBubbleDelimiterGreen Green
highlight! link OctoBubbleDelimiterRed Red
highlight! link OctoBubbleDelimiterPurple Purple
highlight! link OctoBubbleDelimiterYellow Yellow
highlight! link OctoBubbleDelimiterBlue Blue
highlight! link OctoBubbleDelimiterGrey Grey
" syn_end }}}
" syn_begin: netrw {{{
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
" syn_end }}}
" syn_begin: startify/quickmenu {{{
" https://github.com/mhinz/vim-startify
" https://github.com/skywind3000/quickmenu.vim
highlight! link StartifyBracket Grey
highlight! link StartifyFile Green
highlight! link StartifyNumber Red
highlight! link StartifyPath Grey
highlight! link StartifySlash Grey
highlight! link StartifySection Blue
highlight! link StartifyHeader Purple
highlight! link StartifySpecial Grey
" syn_end }}}
" syn_begin: quickmenu {{{
" https://github.com/skywind3000/quickmenu.vim
highlight! link QuickmenuOption Green
highlight! link QuickmenuNumber Orange
highlight! link QuickmenuBracket Grey
highlight! link QuickmenuHelp Blue
highlight! link QuickmenuSpecial Grey
highlight! link QuickmenuHeader Purple
" syn_end }}}
" syn_begin: undotree {{{
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
" syn_end }}}
" syn_begin: NeogitStatus/NeogitCommitView {{{
" https://github.com/TimUntersberger/neogit
highlight! link NeogitNotificationInfo Blue
highlight! link NeogitNotificationWarning Yellow
highlight! link NeogitNotificationError Red
highlight! link NeogitDiffAdd Green
highlight! link NeogitDiffDelete Red
highlight! link NeogitDiffContextHighlight CursorLine
highlight! link NeogitHunkHeaderHighlight TabLine
highlight! link NeogitHunkHeader TabLineFill
highlight! link NeogitCommandCodeNormal Green
highlight! link NeogitCommandCodeError Red
highlight! link NeogitCommitViewHeader diffIndexLine
highlight! link NeogitFilePath diffFile
" syn_end }}}
" syn_begin: dashboard {{{
" https://github.com/glepnir/dashboard-nvim
highlight! link DashboardHeader Blue
highlight! link DashboardCenter Green
highlight! link DashboardShortcut Red
highlight! link DashboardFooter Yellow
" syn_end }}}
" syn_begin: markdown {{{
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
" syn_end }}}
" syn_begin: vimwiki {{{
call sonokai#highlight('VimwikiHeader1', s:palette.red, s:palette.none, 'bold')
call sonokai#highlight('VimwikiHeader2', s:palette.orange, s:palette.none, 'bold')
call sonokai#highlight('VimwikiHeader3', s:palette.yellow, s:palette.none, 'bold')
call sonokai#highlight('VimwikiHeader4', s:palette.green, s:palette.none, 'bold')
call sonokai#highlight('VimwikiHeader5', s:palette.blue, s:palette.none, 'bold')
call sonokai#highlight('VimwikiHeader6', s:palette.purple, s:palette.none, 'bold')
call sonokai#highlight('VimwikiLink', s:palette.blue, s:palette.none, 'underline')
call sonokai#highlight('VimwikiItalic', s:palette.none, s:palette.none, 'italic')
call sonokai#highlight('VimwikiBold', s:palette.none, s:palette.none, 'bold')
call sonokai#highlight('VimwikiUnderline', s:palette.none, s:palette.none, 'underline')
highlight! link VimwikiList Red
highlight! link VimwikiTag Blue
highlight! link VimwikiCode Green
highlight! link VimwikiHR Yellow
highlight! link VimwikiHeaderChar Grey
highlight! link VimwikiMarkers Grey
highlight! link VimwikiPre Green
highlight! link VimwikiPreDelim Green
highlight! link VimwikiNoExistsLink Red
" syn_end }}}
" syn_begin: rst {{{
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
" syn_end }}}
" syn_begin: tex {{{
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
" syn_end }}}
" syn_begin: html/markdown/javascriptreact/typescriptreact {{{
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
" syn_end }}}
" syn_begin: htmldjango {{{
" builtin: https://github.com/vim/vim/blob/master/runtime/syntax/htmldjango.vim{{{
highlight! link djangoTagBlock Yellow
" }}}
" syn_end }}}
" syn_begin: xml {{{
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
" syn_end }}}
" syn_begin: css/scss/sass/less {{{
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
" syn_end }}}
" syn_begin: scss {{{
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
" syn_end }}}
" syn_begin: less {{{
" vim-less: https://github.com/groenewege/vim-less{{{
highlight! link lessMixinChar Grey
highlight! link lessClass Red
highlight! link lessFunction Orange
" }}}
" syn_end }}}
" syn_begin: javascript/javascriptreact {{{
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
" syn_end }}}
" syn_begin: typescript/typescriptreact {{{
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
" syn_end }}}
" syn_begin: dart {{{
" dart-lang: https://github.com/dart-lang/dart-vim-plugin{{{
highlight! link dartCoreClasses BlueItalic
highlight! link dartTypeName BlueItalic
highlight! link dartInterpolation Purple
highlight! link dartTypeDef Red
highlight! link dartClassDecl Red
highlight! link dartLibrary Red
highlight! link dartMetadata OrangeItalic
" }}}
" syn_end }}}
" syn_begin: c/cpp/objc/objcpp {{{
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
highlight! link Member TSVariable
highlight! link Variable TSVariable
highlight! link Namespace TSNamespace
highlight! link EnumConstant TSNumber
highlight! link chromaticaException TSException
highlight! link chromaticaCast TSLabel
highlight! link OperatorOverload TSOperator
highlight! link AccessQual TSOperator
highlight! link Linkage TSOperator
highlight! link AutoType TSType
" }}}
" vim-lsp-cxx-highlight https://github.com/jackguo380/vim-lsp-cxx-highlight{{{
highlight! link LspCxxHlSkippedRegion Grey
highlight! link LspCxxHlSkippedRegionBeginEnd TSKeyword
highlight! link LspCxxHlGroupEnumConstant OrangeItalic
highlight! link LspCxxHlGroupNamespace TSNamespace
highlight! link LspCxxHlGroupMemberVariable TSVariable
" }}}
" syn_end }}}
" syn_begin: objc {{{
" builtin: {{{
highlight! link objcModuleImport Red
highlight! link objcException Red
highlight! link objcProtocolList Fg
highlight! link objcDirective Red
highlight! link objcPropertyAttribute Purple
highlight! link objcHiddenArgument Fg
" }}}
" syn_end }}}
" syn_begin: cs {{{
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
" syn_end }}}
" syn_begin: python {{{
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
highlight! link semshiImported TSInclude
highlight! link semshiParameter TSParameter
highlight! link semshiParameterUnused Grey
highlight! link semshiSelf TSVariableBuiltin
highlight! link semshiGlobal TSType
highlight! link semshiBuiltin TSTypeBuiltin
highlight! link semshiAttribute TSAttribute
highlight! link semshiLocal TSKeyword
highlight! link semshiFree TSKeyword
highlight! link semshiSelected CurrentWord
highlight! link semshiErrorSign RedSign
highlight! link semshiErrorChar RedSign
" }}}
" syn_end }}}
" syn_begin: lua {{{
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
" syn_end }}}
" syn_begin: java {{{
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
" syn_end }}}
" syn_begin: kotlin {{{
" kotlin-vim: https://github.com/udalov/kotlin-vim{{{
highlight! link ktSimpleInterpolation Purple
highlight! link ktComplexInterpolation Purple
highlight! link ktComplexInterpolationBrace Purple
highlight! link ktStructure Red
highlight! link ktKeyword OrangeItalic
" }}}
" syn_end }}}
" syn_begin: scala {{{
" builtin: https://github.com/derekwyatt/vim-scala{{{
highlight! link scalaNameDefinition Fg
highlight! link scalaInterpolationBoundary Purple
highlight! link scalaInterpolation Purple
highlight! link scalaTypeOperator Red
highlight! link scalaOperator Red
highlight! link scalaKeywordModifier Red
" }}}
" syn_end }}}
" syn_begin: go {{{
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
" syn_end }}}
" syn_begin: rust {{{
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
" coc-rust-analyzer: https://github.com/fannheyward/coc-rust-analyzer {{{
highlight! link CocRustChainingHint Grey
highlight! link CocRustTypeHint Grey
" }}}
" syn_end }}}
" syn_begin: swift {{{
" swift.vim: https://github.com/keith/swift.vim{{{
highlight! link swiftInterpolatedWrapper Purple
highlight! link swiftInterpolatedString Purple
highlight! link swiftProperty Fg
highlight! link swiftTypeDeclaration Red
highlight! link swiftClosureArgument OrangeItalic
highlight! link swiftStructure Red
" }}}
" syn_end }}}
" syn_begin: php {{{
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
" syn_end }}}
" syn_begin: ruby {{{
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
" syn_end }}}
" syn_begin: haskell {{{
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
" syn_end }}}
" syn_begin: perl/pod {{{
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
" syn_end }}}
" syn_begin: ocaml {{{
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
" syn_end }}}
" syn_begin: erlang {{{
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
" syn_end }}}
" syn_begin: elixir {{{
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
" syn_end }}}
" syn_begin: lisp {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_LISP{{{
highlight! link lispAtomMark Purple
highlight! link lispKey Orange
highlight! link lispFunc Green
" }}}
" syn_end }}}
" syn_begin: clojure {{{
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
" syn_end }}}
" syn_begin: matlab {{{
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
" syn_end }}}
" syn_begin: octave {{{
" vim-octave: https://github.com/McSinyx/vim-octave{{{
highlight! link octaveDelimiter Orange
highlight! link octaveSemicolon Grey
highlight! link octaveOperator Orange
highlight! link octaveVariable BlueItalic
highlight! link octaveVarKeyword BlueItalic
" }}}
" syn_end }}}
" syn_begin: sh/zsh {{{
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
" syn_end }}}
" syn_begin: zsh {{{
" builtin: https://github.com/chrisbra/vim-zsh{{{
highlight! link zshOption BlueItalic
highlight! link zshSubst Orange
highlight! link zshFunction Green
" }}}
" syn_end }}}
" syn_begin: ps1 {{{
" vim-ps1: https://github.com/PProvost/vim-ps1{{{
highlight! link ps1FunctionInvocation Green
highlight! link ps1FunctionDeclaration Green
highlight! link ps1InterpolationDelimiter Purple
highlight! link ps1BuiltIn BlueItalic
" }}}
" syn_end }}}
" syn_begin: vim {{{
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
" syn_end }}}
" syn_begin: make {{{
highlight! link makeIdent Purple
highlight! link makeSpecTarget BlueItalic
highlight! link makeTarget Orange
highlight! link makeCommands Red
" syn_end }}}
" syn_begin: cmake {{{
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
" syn_end }}}
" syn_begin: json {{{
highlight! link jsonKeyword Red
highlight! link jsonString Green
highlight! link jsonBoolean Blue
highlight! link jsonNoise Grey
highlight! link jsonQuote Grey
highlight! link jsonBraces Fg
" syn_end }}}
" syn_begin: yaml {{{
highlight! link yamlKey Red
highlight! link yamlConstant BlueItalic
highlight! link yamlString Green
" syn_end }}}
" syn_begin: toml {{{
call sonokai#highlight('tomlTable', s:palette.purple, s:palette.none, 'bold')
highlight! link tomlKey Red
highlight! link tomlBoolean Blue
highlight! link tomlString Green
highlight! link tomlTableArray tomlTable
" syn_end }}}
" syn_begin: gitcommit {{{
highlight! link gitcommitSummary Red
highlight! link gitcommitUntracked Grey
highlight! link gitcommitDiscarded Grey
highlight! link gitcommitSelected Grey
highlight! link gitcommitUnmerged Grey
highlight! link gitcommitOnBranch Grey
highlight! link gitcommitArrow Grey
highlight! link gitcommitFile Green
" syn_end }}}
" syn_begin: dosini {{{
call sonokai#highlight('dosiniHeader', s:palette.red, s:palette.none, 'bold')
highlight! link dosiniLabel Blue
highlight! link dosiniValue Green
highlight! link dosiniNumber Green
" syn_end }}}
" syn_begin: help {{{
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
" syn_end }}}
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
