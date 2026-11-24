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

hi Normal guifg=#9ea3c0 ctermfg=146 guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NonText guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi LineNr guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Comment guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Cursor guifg=#222433 ctermfg=235 guibg=#9ea3c0 ctermbg=146 guisp=NONE gui=NONE cterm=NONE
hi TermCursor guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=reverse cterm=reverse
hi CursorIM guifg=#222433 ctermfg=235 guibg=#9ea3c0 ctermbg=146 guisp=NONE gui=NONE cterm=NONE
hi SignColumn guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#2a2c3f ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#2a2c3f ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#2a2c3f ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi CursorLineNr guifg=#535f98 ctermfg=61 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Conceal guifg=#ac8b83 ctermfg=138 guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi NormalFloat guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FloatBorder guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FloatTitle guifg=#929be5 ctermfg=104 guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi FloatFooter guifg=#545c8c ctermfg=60 guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi WinSeparator guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Folded guifg=#666c99 ctermfg=60 guibg=#32364c ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi MatchParen guifg=NONE ctermfg=NONE guibg=#2f3147 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi Directory guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi String guifg=#7cbe8c ctermfg=108 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Statement guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Operator guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Label guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Function guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Constant guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Boolean guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Number guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Float guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Title guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi Keyword guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Identifier guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Exception guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Type guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi TypeDef guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi PreProc guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Special guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Error guifg=#ff9494 ctermfg=210 guibg=#222433 ctermbg=235 guisp=NONE gui=bold cterm=bold
hi ErrorMsg guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi WarningMsg guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi MoreMsg guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Debug guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi Todo guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi Pmenu guifg=#9ea3c0 ctermfg=146 guibg=#32364c ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi PmenuSel guifg=#9ea3c0 ctermfg=146 guibg=#363e7f ctermbg=61 guisp=NONE gui=NONE cterm=NONE
hi PmenuMatch guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#292c3f ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#464f7f ctermbg=60 guisp=NONE gui=NONE cterm=NONE
hi PmenuKind guifg=#8085a6 ctermfg=103 guibg=#32364c ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi PmenuKindSel guifg=#9ea3c0 ctermfg=146 guibg=#363e7f ctermbg=61 guisp=NONE gui=NONE cterm=NONE
hi PmenuExtra guifg=#8085a6 ctermfg=103 guibg=#32364c ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi PmenuExtraSel guifg=#9ea3c0 ctermfg=146 guibg=#363e7f ctermbg=61 guisp=NONE gui=NONE cterm=NONE
hi PmenuMatchSel guifg=#929be5 ctermfg=104 guibg=#363e7f ctermbg=61 guisp=NONE gui=bold cterm=bold
hi Visual guifg=NONE ctermfg=NONE guibg=#363e7f ctermbg=61 guisp=NONE gui=NONE cterm=NONE
hi SnippetTabstop guifg=NONE ctermfg=NONE guibg=#363e7f ctermbg=61 guisp=NONE gui=NONE cterm=NONE
hi Search guifg=#a6afff ctermfg=147 guibg=#6471e5 ctermbg=63 guisp=NONE gui=NONE cterm=NONE
hi CurSearch guifg=#a6afff ctermfg=147 guibg=#6471e5 ctermbg=63 guisp=NONE gui=NONE cterm=NONE
hi Substitute guifg=#a6afff ctermfg=147 guibg=#6471e5 ctermbg=63 guisp=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#a4b2ff ctermfg=147 guibg=#4754cb ctermbg=62 guisp=NONE gui=NONE cterm=NONE
hi Question guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi WildMenu guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104 guisp=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi SpellCap guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#a8a384 gui=underline cterm=underline
hi SpellLocal guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi SpellRare guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi Added guifg=NONE ctermfg=NONE guibg=#1c394b ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi Removed guifg=#775c77 ctermfg=96 guibg=#513351 ctermbg=53 guisp=NONE gui=NONE cterm=NONE
hi Changed guifg=NONE ctermfg=NONE guibg=#1e3930 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE ctermfg=NONE guibg=#1c394b ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi DiffChange guifg=NONE ctermfg=NONE guibg=#1e3930 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi DiffDelete guifg=#775c77 ctermfg=96 guibg=#513351 ctermbg=53 guisp=NONE gui=NONE cterm=NONE
hi DiffText guifg=NONE ctermfg=NONE guibg=#1f4a3c ctermbg=23 guisp=NONE gui=NONE cterm=NONE
hi QuickFixLine guifg=#9ea3c0 ctermfg=146 guibg=#363e7f ctermbg=61 guisp=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 guisp=NONE gui=bold cterm=bold
hi StatusLineTerm guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 guisp=NONE gui=bold cterm=bold
hi StatusLineNC guifg=#4b4e6d ctermfg=60 guibg=#282a3a ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi WinBar guifg=#757aa5 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi WinBarNC guifg=#4b4e6d ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#4b4e6d ctermfg=60 guibg=#282a3a ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi TabLine guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104 guisp=NONE gui=bold cterm=bold
hi qfFileName guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi qfLineNr guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiagnosticError guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiagnosticVirtualTextError guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi DiagnosticUnderlineError guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi DiagnosticWarn guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiagnosticVirtualTextWarn guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi DiagnosticUnderlineWarn guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi DiagnosticInfo guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiagnosticVirtualTextInfo guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#82dabf gui=underline cterm=underline
hi DiagnosticHint guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiagnosticOk guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiagnosticVirtualTextHint guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#82dabf gui=underline cterm=underline
hi DiagnosticUnderlineOk guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#82dabf gui=underline cterm=underline
hi DiagnosticDeprecated guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=strikethrough cterm=strikethrough
hi DiagnosticUnnecessary guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi LspSignatureActiveParameter guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi LspReferenceText guifg=NONE ctermfg=NONE guibg=#2f3147 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi LspReferenceRead guifg=NONE ctermfg=NONE guibg=#2f3147 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi LspReferenceWrite guifg=NONE ctermfg=NONE guibg=#2f3147 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi LspInlayHint guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi LspCodeLens guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi ComplHint guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi htmlEndTag guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi htmlSpecialTagName guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi jsonQuote guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi yamlBlockMappingKey guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi yamlAnchor guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi pythonStatement guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi pythonBuiltin guifg=#59b6b6 ctermfg=73 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi pythonRepeat guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi pythonOperator guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi pythonDecorator guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi pythonDecoratorName guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi zshVariableDef guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi zshFunction guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi zshKSHFunction guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi cPreCondit guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi cIncluded guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi cStorageClass guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi cppStructure guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi cppSTLnamespace guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi csStorage guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi csModifier guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi csClass guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi csClassType guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi csNewType guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi rubyConstant guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi rubySymbol guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi rubyBlockParameter guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi rubyClassName guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi rubyInstanceVariable guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi typescriptImport guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi typescriptDocRef guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi mkdHeading guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi mkdLink guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi mkdCode guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi mkdCodeStart guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi mkdCodeEnd guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi mkdCodeDelimiter guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi tomlTable guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi rustModPath guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi rustTypedef guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi rustStructure guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi rustMacro guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi rustExternCrate guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi graphqlStructure guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi graphqlDirective guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi graphqlName guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi graphqlTemplateString guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeSymlink guifg=#5b9a87 ctermfg=72 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeSymlinkFolderName guifg=#5b9a87 ctermfg=72 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeFolderName guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeRootFolder guifg=#464c79 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi NvimTreeFolderIcon guifg=#6f78be ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeFileIcon guifg=#6f78be ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeEmptyFolderName guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeOpenedFolderName guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeExecFile guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeOpenedHL guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeSpecialFile guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi NvimTreeImageFile guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeIndentMarker guifg=#464c79 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeModifiedIcon guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeGitDirtyIcon guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeGitStagedIcon guifg=#7cbe8c ctermfg=108 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeGitMergeIcon guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeGitRenamedIcon guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeGitNewIcon guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeGitDeletedIcon guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeWindowPicker guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104 guisp=NONE gui=bold cterm=bold
hi NvimTreeNormal guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeLiveFilterPrefix guifg=#5b9a87 ctermfg=72 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeLiveFilterValue guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NvimTreeBookmarkIcon guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerBlue guifg=#589ec6 ctermfg=74 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGreen guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGrey guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerRed guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerYellow guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerNormal guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerNormalNC guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerBorder guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerFSDirectoryIcon guifg=#6f78be ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi FylerFSDirectoryName guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerFSFile guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerFSLink guifg=#5b9a87 ctermfg=72 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGitAdded guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGitConflict guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGitDeleted guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGitIgnored guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGitModified guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGitRenamed guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGitStaged guifg=#7cbe8c ctermfg=108 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGitUnstaged guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerGitUntracked guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerIndentMarker guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FylerWinPick guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaNormal guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaNormalNC guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaBorder guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaTitle guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi EdaCursorLine guifg=NONE ctermfg=NONE guibg=#2a2c3f ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi EdaIndentMarker guifg=#464c79 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaRootName guifg=#464c79 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi EdaDivider guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaFilterIndicator guifg=#5b9a87 ctermfg=72 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaDirectoryName guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaDirectoryIcon guifg=#6f78be ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaOpenedDirectoryName guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaEmptyDirectoryName guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaFileName guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaFileIcon guifg=#6f78be ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaSymlink guifg=#5b9a87 ctermfg=72 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaBrokenSymlink guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaSymlinkTarget guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaErrorNode guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaLoadingNode guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi EdaOpenedFile guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaModifiedFile guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitUntracked guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitUntrackedIcon guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitAdded guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitAddedIcon guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitModified guifg=#beb996 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitModifiedIcon guifg=#beb996 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitDeleted guifg=#bf74bf ctermfg=176 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitDeletedIcon guifg=#bf74bf ctermfg=176 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitRenamed guifg=#beb996 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitRenamedIcon guifg=#beb996 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitStaged guifg=#7cbe8c ctermfg=108 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitStagedIcon guifg=#7cbe8c ctermfg=108 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitConflict guifg=#c09b92 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitConflictIcon guifg=#c09b92 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitIgnored guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaGitIgnoredIcon guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaMarked guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi EdaCut guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi EdaOpDeleteSign guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi EdaOpDeletePath guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaOpDeleteText guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaOpCreateSign guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi EdaOpCreatePath guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaOpCreateText guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaOpMoveSign guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi EdaOpMovePath guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi EdaOpMoveText guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FernBranchSymbol guifg=#6f78be ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FernBranchText guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FernLeafSymbol guifg=#5b9a87 ctermfg=72 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FernLeafText guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FernMarked guifg=#59b6b6 ctermfg=73 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi GitSignsAdd guifg=#7cbe8c ctermfg=108 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi GitSignsChange guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi GitSignsDelete guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi GitSignsChangeDelete guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi GitGutterAdd guifg=#7cbe8c ctermfg=108 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi GitGutterChange guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi GitGutterDelete guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi GitGutterChangeDelete guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi fugitiveHeader guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi DiffviewDim1 guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewPrimary guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewSecondary guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusAdded guifg=#589ec6 ctermfg=74 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusUntracked guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusModified guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusRenamed guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusCopied guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusTypeChanged guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusUnmerged guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusUnknown guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusDeleted guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusBroken guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewStatusIgnored guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewFilePanelRootPath guifg=#6f78be ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewFilePanelTitle guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi DiffviewFilePanelCounter guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi DiffviewFilePanelFileName guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewFilePanelPath guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi DiffviewFilePanelSelected guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewFilePanelInsertions guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewFilePanelDeletions guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewFilePanelConflicts guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffviewHash guifg=#6f78be ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi ALEWarningSign guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi ALEInfoSign guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CocErrorSign guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi CocWarningSign guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi CocInfoSign guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi CocHintSign guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi LspError guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi LspErrorText guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi LspErrorHighlight guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi LspErrorVirtualText guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi LspWarning guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi LspWarningText guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi LspWarningHighlight guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi LspWarningVirtualText guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi LspInformation guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi LspInformationText guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi LspInformationHighlight guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi LspInformationVirtualText guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi LspHint guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi LspHintText guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi LspHintHighlight guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi LspHintVirtualText guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi LspCodeActionText guifg=#6f78be ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi CmpItemAbbr guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemAbbrMatch guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi CmpItemAbbrMatchFuzzy guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi CmpItemAbbrDeprecated guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=strikethrough cterm=strikethrough
hi CmpItemMenu guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi CmpItemKind guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindText guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindVariable guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindConstant guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindEnum guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindInterface guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindClass guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindFunction guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindMethod guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindModule guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindConstructor guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindKeyword guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindProperty guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindField guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CmpItemKindUnit guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpMenu guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpMenuSelection guifg=NONE ctermfg=NONE guibg=#363e7f ctermbg=61 guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpLabelMatch guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi BlinkCmpLabelDeprecated guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=strikethrough cterm=strikethrough
hi BlinkCmpKind guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindText guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindVariable guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindConstant guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindEnum guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindInterface guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindClass guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindFunction guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindMethod guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindModule guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindConstructor guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindKeyword guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindProperty guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindField guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpKindUnit guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpSource guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi BlinkCmpDocSeparator guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpMenuBorder guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpDocBorder guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi BlinkCmpSignatureHelpBorder guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi TelescopeNormal guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi TelescopeTitle guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi TelescopeMatching guifg=#bdc3e6 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi TelescopeBorder guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi TelescopePromptPrefix guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi TelescopePromptCounter guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi TelescopeMultiIcon guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi TelescopeMultiSelection guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi SnacksNormal guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi SnacksPickerPrompt guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi SnacksPickerMatch guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi SnacksPickerDir guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CopilotSuggestion guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi CleverFChar guifg=#a6afff ctermfg=147 guibg=#6471e5 ctermbg=63 guisp=NONE gui=underline cterm=underline
hi MiniJump guifg=#a6afff ctermfg=147 guibg=#6471e5 ctermbg=63 guisp=NONE gui=underline cterm=underline
hi ConflictMarkerBegin guifg=NONE ctermfg=NONE guibg=#5b9a87 ctermbg=72 guisp=NONE gui=bold cterm=bold
hi ConflictMarkerOurs guifg=NONE ctermfg=NONE guibg=#26463b ctermbg=23 guisp=NONE gui=NONE cterm=NONE
hi ConflictMarkerTheirs guifg=NONE ctermfg=NONE guibg=#1c394b ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi ConflictMarkerEnd guifg=NONE ctermfg=NONE guibg=#417593 ctermbg=31 guisp=NONE gui=bold cterm=bold
hi ConflictMarkerSeparator guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi EasyMotionTarget guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi EasyMotionShade guifg=#545c8c ctermfg=60 guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi EasyMotionIncCursor guifg=#9ea3c0 ctermfg=146 guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi HopNextKey guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi HopNextKey1 guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi HopNextKey2 guifg=#5b9a87 ctermfg=72 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi HopUnmatched guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi FlashPrompt guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi FlashPromptIcon guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi FlashLabel guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi FidgetTitle guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi FidgetTask guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi HlSearchLens guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi HlSearchLensNear guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi NotifyBackground guifg=NONE ctermfg=NONE guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi NotifyERRORBorder guifg=#cc8a8a ctermfg=174 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyWARNBorder guifg=#796b68 ctermfg=242 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyINFOBorder guifg=#628e80 ctermfg=66 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyDEBUGBorder guifg=#82838d ctermfg=102 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyTRACEBorder guifg=#628e80 ctermfg=66 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyERRORIcon guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyWARNIcon guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyINFOIcon guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyDEBUGIcon guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyTRACEIcon guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyERRORTitle guifg=#ff9494 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyWARNTitle guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyINFOTitle guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyDEBUGTitle guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyTRACETitle guifg=#82dabf ctermfg=115 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyERRORBody guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyWARNBody guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyINFOBody guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyDEBUGBody guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi NotifyTRACEBody guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi AvanteTitle guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104 guisp=NONE gui=NONE cterm=NONE
hi AvanteReversedTitle guifg=#929be5 ctermfg=104 guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi AvanteSubtitle guifg=#222433 ctermfg=235 guibg=#73c1a9 ctermbg=79 guisp=NONE gui=NONE cterm=NONE
hi AvanteReversedSubtitle guifg=#73c1a9 ctermfg=79 guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi AvanteThirdTitle guifg=#9ea3c0 ctermfg=146 guibg=#32364c ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi AvanteReversedThirdTitle guifg=#32364c ctermfg=237 guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi AvantePopupHint guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi AvanteInlineHint guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi AvanteSidebarWinSeparator guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi AvanteSidebarWinHorizontalSeparator guifg=#222433 ctermfg=235 guibg=#222433 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
if has("nvim")
  let g:terminal_color_0 = '#111219'
  let g:terminal_color_1 = '#e58585'
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
else
  let g:terminal_ansi_colors = ['#111219', '#e58585', '#7cbe8c', '#8e8a6f', '#4c89ac', '#6c75cb', '#73c1a9', '#9ea3c0', '#545c8c', '#b871b8', '#7cbe8c', '#a8a384', '#589ec6', '#929be5', '#59b6b6', '#9ea3c0']
endif
if has("nvim-0.8.0")
  hi @string guifg=#7cbe8c ctermfg=108 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @string.regexp guifg=#7cbe8c ctermfg=108 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @string.escape guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @string.special.url guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @variable.parameter guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @property guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @keyword guifg=#b871b8 ctermfg=133 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @operator guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @module guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @type guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @type.builtin guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @function.tsx guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @punctuation.special.typescript guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @keyword.import guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @variable guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @variable.builtin guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @constant.builtin guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @constructor guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @tag guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @tag.delimiter guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @tag.attribute guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @tag.builtin.tsx guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @markup.heading guifg=#a8a384 ctermfg=144 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
  hi @markup.strong guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
  hi @markup.list guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @markup.raw guifg=#73c1a9 ctermfg=79 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @markup.link guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @markup.link.url guifg=#8085a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @markup.quote guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @lsp.type.class guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @lsp.type.interface guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @lsp.type.parameter guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @lsp.type.property guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @lsp.type.struct guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @lsp.type.type guifg=#ac8b83 ctermfg=138 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @lsp.type.typeParameter guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @lsp.type.variable guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @lsp.type.member guifg=#929be5 ctermfg=104 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
  hi @lsp.type.namespace guifg=#9ea3c0 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
endif
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
