" dogrun: Take a sweet dog with you.
"
" Author: wadackel
" License: MIT
"   Copyright (c) 2020 wadackel

if &background !=# 'dark'
  set background=dark
endif

if exists('g:colors_name')
  hi clear
endif

if exists('g:syntax_on')
  syntax reset
endif

let g:colors_name = 'dogrun'

hi Normal guifg=#9ea3c0 ctermfg=146 guibg=#222433 ctermbg=235
hi Delimiter guifg=#8085a6 ctermfg=103
hi NonText guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE
hi VertSplit guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LineNr guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Comment guifg=#545c8c ctermfg=60 gui=NONE cterm=NONE
hi Cursor guifg=#222433 ctermfg=235 guibg=#9ea3c0 ctermbg=146
hi CursorIM guifg=#222433 ctermfg=235 guibg=#9ea3c0 ctermbg=146
hi SignColumn guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE
hi ColorColumn guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi CursorColumn guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#535f98 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conceal guifg=#ac8b83 ctermfg=138 guibg=#222433 ctermbg=235 gui=NONE cterm=NONE
hi NormalFloat guifg=#8085a6 ctermfg=103 guibg=#222433 ctermbg=235 gui=NONE cterm=NONE
hi FloatBorder guifg=#545c8c ctermfg=60 guibg=#222433 ctermbg=235 gui=NONE cterm=NONE
hi Folded guifg=#666c99 ctermfg=60 guibg=#32364c ctermbg=237 gui=NONE cterm=NONE
hi FoldColumn guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guibg=#2f3147 ctermbg=236
hi Directory guifg=#a8a384 ctermfg=144
hi Underlined gui=underline cterm=underline
hi String guifg=#7cbe8c ctermfg=108
hi Statement guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi Label guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi Function guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi Constant guifg=#73c1a9 ctermfg=79
hi Boolean guifg=#73c1a9 ctermfg=79
hi Number guifg=#73c1a9 ctermfg=79
hi Float guifg=#73c1a9 ctermfg=79
hi Title guifg=#a8a384 ctermfg=144 gui=bold cterm=bold
hi Keyword guifg=#ac8b83 ctermfg=138
hi Identifier guifg=#ac8b83 ctermfg=138
hi Exception guifg=#a8a384 ctermfg=144
hi Type guifg=#a8a384 ctermfg=144 gui=NONE cterm=NONE
hi TypeDef guifg=#a8a384 ctermfg=144 gui=NONE cterm=NONE
hi PreProc guifg=#929be5 ctermfg=104
hi Special guifg=#b871b8 ctermfg=133
hi SpecialKey guifg=#b871b8 ctermfg=133
hi SpecialChar guifg=#b871b8 ctermfg=133
hi SpecialComment guifg=#b871b8 ctermfg=133
hi Error guifg=#dc6f79 ctermfg=167 guibg=#222433 ctermbg=235 gui=bold cterm=bold
hi ErrorMsg guifg=#dc6f79 ctermfg=167 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi WarningMsg guifg=#ac8b83 ctermfg=138 gui=bold cterm=bold
hi MoreMsg guifg=#73c1a9 ctermfg=79
hi Todo guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Pmenu guifg=#9ea3c0 ctermfg=146 guibg=#32364c ctermbg=237
hi PmenuSel guifg=#9ea3c0 ctermfg=146 guibg=#424865 ctermbg=60
hi PmenuSbar guibg=#292c3f ctermbg=236
hi PmenuThumb guibg=#464f7f ctermbg=60
hi Visual guibg=#363e7f ctermbg=61 gui=NONE cterm=NONE
hi Search guifg=#a6afff ctermfg=147 guibg=#6471e5 ctermbg=63
hi IncSearch guifg=#a4b2ff ctermfg=147 guibg=#4754cb ctermbg=62 gui=NONE cterm=NONE
hi Question guifg=#73c1a9 ctermfg=79 gui=bold cterm=bold
hi WildMenu guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104
hi SpellBad guifg=#dc6f79 ctermfg=167 gui=underline cterm=underline
hi SpellCap gui=underline cterm=underline
hi SpellLocal guifg=#dc6f79 ctermfg=167 gui=underline cterm=underline
hi SpellRare guifg=#a8a384 ctermfg=144 gui=underline cterm=underline
hi DiffAdd guibg=#1c394b ctermbg=237 gui=bold cterm=bold
hi DiffChange guibg=#26463b ctermbg=23 gui=bold cterm=bold
hi DiffDelete guifg=#d2d9ff ctermfg=189 guibg=#5e3e5e ctermbg=96 gui=bold cterm=bold
hi DiffText guibg=#28795c ctermbg=29 gui=NONE cterm=NONE
hi QuickFixLine guifg=#9ea3c0 ctermfg=146 guibg=#363e7f ctermbg=61
hi StatusLine guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=bold cterm=bold
hi StatusLineTerm guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=bold cterm=bold
hi StatusLineNC guifg=#4b4e6d ctermfg=60 guibg=#282a3a ctermbg=235 gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#4b4e6d ctermfg=60 guibg=#282a3a ctermbg=235 gui=NONE cterm=NONE
hi TabLine guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi TabLineFill guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi TabLineSel guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104 gui=bold cterm=bold
hi qfFileName guifg=#73c1a9 ctermfg=79
hi qfLineNr guifg=#545c8c ctermfg=60
hi DiagnosticError guifg=#dc6f79 ctermfg=167
hi DiagnosticVirtualTextError guifg=#dc6f79 ctermfg=167 gui=bold cterm=bold
hi DiagnosticUnderlineError guifg=#dc6f79 ctermfg=167 gui=underline cterm=underline
hi DiagnosticWarn guifg=#ac8b83 ctermfg=138
hi DiagnosticVirtualTextWarn guifg=#ac8b83 ctermfg=138 gui=bold cterm=bold
hi DiagnosticUnderlineWarn guifg=#ac8b83 ctermfg=138 gui=underline cterm=underline
hi DiagnosticInfo guifg=#82dabf ctermfg=115
hi DiagnosticVirtualTextInfo guifg=#545c8c ctermfg=60 gui=bold cterm=bold
hi DiagnosticUnderlineInfo gui=underline cterm=underline
hi DiagnosticHint guifg=#82dabf ctermfg=115
hi DiagnosticVirtualTextHint guifg=#545c8c ctermfg=60 gui=bold cterm=bold
hi DiagnosticUnderlineHint gui=underline cterm=underline
hi htmlTag guifg=#8085a6 ctermfg=103
hi htmlEndTag guifg=#8085a6 ctermfg=103
hi htmlSpecialTagName guifg=#ac8b83 ctermfg=138
hi htmlArg guifg=#8085a6 ctermfg=103
hi jsonQuote guifg=#8085a6 ctermfg=103
hi yamlBlockMappingKey guifg=#929be5 ctermfg=104
hi yamlAnchor guifg=#b871b8 ctermfg=133
hi pythonStatement guifg=#ac8b83 ctermfg=138
hi pythonBuiltin guifg=#59b6b6 ctermfg=73
hi pythonRepeat guifg=#ac8b83 ctermfg=138
hi pythonOperator guifg=#ac8b83 ctermfg=138
hi pythonDecorator guifg=#b871b8 ctermfg=133
hi pythonDecoratorName guifg=#b871b8 ctermfg=133
hi zshVariableDef guifg=#929be5 ctermfg=104
hi zshFunction guifg=#929be5 ctermfg=104
hi zshKSHFunction guifg=#929be5 ctermfg=104
hi cPreCondit guifg=#ac8b83 ctermfg=138
hi cIncluded guifg=#b871b8 ctermfg=133
hi cStorageClass guifg=#ac8b83 ctermfg=138
hi cppStructure guifg=#b871b8 ctermfg=133
hi cppSTLnamespace guifg=#ac8b83 ctermfg=138
hi csStorage guifg=#ac8b83 ctermfg=138
hi csModifier guifg=#929be5 ctermfg=104
hi csClass guifg=#929be5 ctermfg=104
hi csClassType guifg=#b871b8 ctermfg=133
hi csNewType guifg=#ac8b83 ctermfg=138
hi rubyConstant guifg=#ac8b83 ctermfg=138
hi rubySymbol guifg=#929be5 ctermfg=104
hi rubyBlockParameter guifg=#929be5 ctermfg=104
hi rubyClassName guifg=#b871b8 ctermfg=133
hi rubyInstanceVariable guifg=#b871b8 ctermfg=133
hi typescriptImport guifg=#929be5 ctermfg=104
hi typescriptDocRef guifg=#545c8c ctermfg=60 gui=underline cterm=underline
hi mkdHeading guifg=#545c8c ctermfg=60
hi mkdLink guifg=#929be5 ctermfg=104
hi mkdCode guifg=#929be5 ctermfg=104
hi mkdCodeStart guifg=#929be5 ctermfg=104
hi mkdCodeEnd guifg=#929be5 ctermfg=104
hi mkdCodeDelimiter guifg=#929be5 ctermfg=104
hi tomlTable guifg=#929be5 ctermfg=104
hi rustModPath guifg=#929be5 ctermfg=104
hi rustTypedef guifg=#929be5 ctermfg=104
hi rustStructure guifg=#929be5 ctermfg=104
hi rustMacro guifg=#929be5 ctermfg=104
hi rustExternCrate guifg=#929be5 ctermfg=104
hi graphqlStructure guifg=#b871b8 ctermfg=133
hi graphqlDirective guifg=#b871b8 ctermfg=133
hi graphqlName guifg=#929be5 ctermfg=104
hi graphqlTemplateString guifg=#9ea3c0 ctermfg=146
hi vimfilerOpenedFile guifg=#6f78be ctermfg=104
hi vimfilerClosedFile guifg=#6f78be ctermfg=104
hi vimfilerNonMark guifg=#73c1a9 ctermfg=79
hi vimfilerLeaf guifg=#73c1a9 ctermfg=79
hi DefxIconsMarkIcon guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi DefxIconsDirectory guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi DefxIconsParentDirectory guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi DefxIconsSymlinkDirectory guifg=#73c1a9 ctermfg=79 gui=NONE cterm=NONE
hi DefxIconsOpenedTreeIcon guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi DefxIconsNestedTreeIcon guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi DefxIconsClosedTreeIcon guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi Defx_git_Untracked guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi Defx_git_Ignored guifg=#545c8c ctermfg=60 gui=NONE cterm=NONE
hi Defx_git_Unknown guifg=#545c8c ctermfg=60 gui=NONE cterm=NONE
hi Defx_git_Renamed guifg=#26463b ctermfg=23
hi Defx_git_Modified guifg=#26463b ctermfg=23
hi Defx_git_Unmerged guifg=#b871b8 ctermfg=133
hi Defx_git_Deleted guifg=#5e3e5e ctermfg=96
hi Defx_git_Staged guifg=#73c1a9 ctermfg=79
hi FernBranchSymbol guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi FernBranchText guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi FernLeafSymbol guifg=#548e7c ctermfg=66 gui=NONE cterm=NONE
hi FernLeafText guifg=#9ea3c0 ctermfg=146 gui=NONE cterm=NONE
hi FernMarked guifg=#59b6b6 ctermfg=73 gui=NONE cterm=NONE
hi GitGutterAdd guifg=#7cbe8c ctermfg=108
hi GitGutterChange guifg=#a8a384 ctermfg=144
hi GitGutterDelete guifg=#b871b8 ctermfg=133
hi GitGutterChangeDelete guifg=#28795c ctermfg=29
hi fugitiveHeader guifg=#73c1a9 ctermfg=79 gui=bold cterm=bold
hi ALEWarningSign guifg=#ac8b83 ctermfg=138 gui=bold cterm=bold
hi ALEInfoSign guifg=#82dabf ctermfg=115 gui=NONE cterm=NONE
hi CocErrorSign guifg=#dc6f79 ctermfg=167 gui=bold cterm=bold
hi CocWarningSign guifg=#ac8b83 ctermfg=138 gui=bold cterm=bold
hi CocInfoSign guifg=#82dabf ctermfg=115 gui=bold cterm=bold
hi CocHintSign guifg=#82dabf ctermfg=115 gui=bold cterm=bold
hi LspError guifg=#dc6f79 ctermfg=167
hi LspErrorText guifg=#dc6f79 ctermfg=167 gui=bold cterm=bold
hi LspErrorHighlight gui=underline cterm=underline
hi LspErrorVirtualText guifg=#dc6f79 ctermfg=167 gui=bold cterm=bold
hi LspWarning guifg=#ac8b83 ctermfg=138
hi LspWarningText guifg=#ac8b83 ctermfg=138 gui=bold cterm=bold
hi LspWarningHighlight gui=underline cterm=underline
hi LspWarningVirtualText guifg=#ac8b83 ctermfg=138 gui=bold cterm=bold
hi LspInformation guifg=#82dabf ctermfg=115
hi LspInformationText guifg=#82dabf ctermfg=115 gui=bold cterm=bold
hi LspInformationHighlight gui=underline cterm=underline
hi LspInformationVirtualText guifg=#545c8c ctermfg=60 gui=bold cterm=bold
hi LspHint guifg=#82dabf ctermfg=115
hi LspHintText guifg=#82dabf ctermfg=115 gui=bold cterm=bold
hi LspHintHighlight gui=underline cterm=underline
hi LspHintVirtualText guifg=#545c8c ctermfg=60 gui=bold cterm=bold
hi LspCodeActionText guifg=#6f78be ctermfg=104 gui=bold cterm=bold
hi CmpItemAbbr guifg=#9ea3c0 ctermfg=146
hi CmpItemAbbrMatch guifg=#929be5 ctermfg=104 gui=bold cterm=bold
hi CmpItemAbbrMatchFuzzy guifg=#929be5 ctermfg=104 gui=bold cterm=bold
hi CmpItemKind guifg=#8085a6 ctermfg=103
hi CmpItemKindDefault guifg=#8085a6 ctermfg=103
hi CmpItemKindText guifg=#8085a6 ctermfg=103
hi CmpItemKindVariable guifg=#8085a6 ctermfg=103
hi CmpItemKindKeyword guifg=#8085a6 ctermfg=103
hi CmpItemKindInterface guifg=#8085a6 ctermfg=103
hi CmpItemKindFunction guifg=#8085a6 ctermfg=103
hi CmpItemKindMethod guifg=#8085a6 ctermfg=103
hi CmpItemKindProperty guifg=#8085a6 ctermfg=103
hi CmpItemKindUnit guifg=#8085a6 ctermfg=103
hi FloatTitle guifg=#929be5 ctermfg=104 guibg=#222433 ctermbg=235 gui=NONE cterm=NONE
hi TelescopeNormal guifg=#8085a6 ctermfg=103
hi TelescopeTitle guifg=#929be5 ctermfg=104
hi TelescopeMatching guifg=#bdc3e6 ctermfg=146 gui=bold cterm=bold
hi TelescopeBorder guifg=#545c8c ctermfg=60
hi TelescopePromptPrefix guifg=#73c1a9 ctermfg=79
hi TelescopePromptCounter guifg=#545c8c ctermfg=60
hi TelescopeMultiIcon guifg=#a8a384 ctermfg=144
hi TelescopeMultiSelection guifg=#a8a384 ctermfg=144
hi CleverFChar guifg=#a6afff ctermfg=147 guibg=#6471e5 ctermbg=63 gui=underline cterm=underline
hi ConflictMarkerBegin guibg=#548e7c ctermbg=66 gui=bold cterm=bold
hi ConflictMarkerOurs guibg=#26463b ctermbg=23 gui=NONE cterm=NONE
hi ConflictMarkerTheirs guibg=#1c394b ctermbg=237 gui=NONE cterm=NONE
hi ConflictMarkerEnd guibg=#417593 ctermbg=31 gui=bold cterm=bold
hi ConflictMarkerSeparator guifg=#363859 ctermfg=60 gui=bold cterm=bold
hi EasyMotionTarget guifg=#a8a384 ctermfg=144 gui=bold cterm=bold
hi EasyMotionShade guifg=#545c8c ctermfg=60 guibg=#222433 ctermbg=235
hi EasyMotionIncCursor guifg=#9ea3c0 ctermfg=146 guibg=#222433 ctermbg=235
hi FidgetTitle guifg=#73c1a9 ctermfg=79 gui=bold cterm=bold
hi FidgetTask guifg=#545c8c ctermfg=60
if has("nvim")
  let g:terminal_color_0 = '#111219'
  let g:terminal_color_1 = '#c2616b'
  let g:terminal_color_2 = '#7cbe8c'
  let g:terminal_color_3 = '#8e8a6f'
  let g:terminal_color_4 = '#4c89ac'
  let g:terminal_color_5 = '#6c75cb'
  let g:terminal_color_6 = '#73c1a9'
  let g:terminal_color_7 = '#9ea3c0'
  let g:terminal_color_8 = '#545c8c'
  let g:terminal_color_9 = '#b871b8'
  let g:terminal_color_10 = '#7cbe8c'
  let g:terminal_color_11 = '#a8a384'
  let g:terminal_color_12 = '#589ec6'
  let g:terminal_color_13 = '#929be5'
  let g:terminal_color_14 = '#59b6b6'
  let g:terminal_color_15 = '#9ea3c0'
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
endif
if has("nvim-0.8.0")
  hi @string guifg=#7cbe8c ctermfg=108
  hi @string.regex guifg=#7cbe8c ctermfg=108
  hi @string.escape guifg=#b871b8 ctermfg=133
  hi @text.title guifg=#a8a384 ctermfg=144 gui=bold cterm=bold
  hi @text.reference guifg=#929be5 ctermfg=104
  hi @text.uri guifg=#545c8c ctermfg=60
  hi @text.strong gui=bold cterm=bold
  hi @text.literal guifg=#73c1a9 ctermfg=79
  hi @parameter guifg=#929be5 ctermfg=104
  hi @property guifg=#929be5 ctermfg=104
  hi @keyword guifg=#b871b8 ctermfg=133
  hi @type guifg=#ac8b83 ctermfg=138
  hi @type.builtin guifg=#ac8b83 ctermfg=138
  hi @include guifg=#929be5 ctermfg=104
  hi @variable guifg=#9ea3c0 ctermfg=146
  hi @variable.builtin guifg=#ac8b83 ctermfg=138
  hi @constant.builtin guifg=#73c1a9 ctermfg=79
  hi @constructor guifg=#9ea3c0 ctermfg=146
  hi @tag guifg=#9ea3c0 ctermfg=146
  hi @tag.delimiter guifg=#929be5 ctermfg=104
  hi @tag.attribute guifg=#929be5 ctermfg=104
endif
let g:defx_icons_gui_colors = {
  \ 'brown': 'a9323d',
  \ 'aqua': '5b9c9c',
  \ 'blue': '5d8fac',
  \ 'darkBlue': '557486',
  \ 'purple': '6f78be',
  \ 'lightPurple': '959acb',
  \ 'red': 'c2616b',
  \ 'beige': '686765',
  \ 'yellow': '8e8a6f',
  \ 'orange': 'c59f96',
  \ 'darkOrange': '79564f',
  \ 'pink': '9e619e',
  \ 'salmon': 'ab57ab',
  \ 'green': '63976f',
  \ 'lightGreen': '5aa46c',
  \ 'white': '898da6',
  \ }
let g:defx_icons_term_colors = {
  \ 'brown': 131,
  \ 'aqua': 73,
  \ 'blue': 67,
  \ 'darkBlue': 67,
  \ 'purple': 104,
  \ 'lightPurple': 103,
  \ 'red': 131,
  \ 'beige': 242,
  \ 'yellow': 101,
  \ 'orange': 181,
  \ 'darkOrange': 95,
  \ 'pink': 133,
  \ 'salmon': 133,
  \ 'green': 65,
  \ 'lightGreen': 71,
  \ 'white': 103,
  \ }
let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine'],
  \ 'bg+':     ['bg', 'CursorLine'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Comment'],
  \ 'gutter':  ['bg', 'Normal'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Label'],
  \ 'pointer': ['fg', 'Boolean'],
  \ 'marker':  ['fg', 'Boolean'],
  \ 'spinner': ['fg', 'Title'],
  \ 'header':  ['fg', 'Comment'],
  \ }
