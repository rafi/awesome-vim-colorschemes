" ==============================================================================
" Name:       purify
" Author:     Kyoz
" Repository: https://github.com/kyoz/purify/
" License:    The MIT License (MIT)
" Copyright:  Kyoz (banminkyoz@gmail.com)
" 
" Clean and beautiful colorscheme for vim (neovim)
" ==============================================================================

highlight clear

if exists('syntax_on')
  syntax reset
endif

set background=dark

if &term == 'screen'
  set t_Co=256
endif

let g:colors_name = 'purify'

" Color Defines {{{

let s:colors = purify#get_colors()

" Main colors
let s:black = s:colors.black
let s:white = s:colors.white
let s:red = s:colors.red
let s:green = s:colors.green
let s:blue = s:colors.blue
let s:yellow = s:colors.yellow
let s:pink = s:colors.pink
let s:salmon = s:colors.salmon
let s:purple = s:colors.purple
let s:dark_yellow = s:colors.dark_yellow

" Other colors
let s:comment_grey = s:colors.comment_grey
let s:cursor_grey = s:colors.cursor_grey
let s:gutter_grey_fg = s:colors.gutter_grey_fg
let s:blur_grey = s:colors.blur_grey
let s:menu_grey = s:colors.menu_grey
let s:visual_grey = s:colors.visual_grey
let s:visual_black = s:colors.visual_black
let s:none = s:colors.none

" }}}

" Styles Defines {{{

if !exists('g:purify_bold')
  let g:purify_bold = 1
endif

if !exists('g:purify_italic')
  let g:purify_italic = 1
endif

if !exists('g:purify_underline')
  let g:purify_underline = 1
endif

if !exists('g:purify_undercurl') && g:purify_underline != 0
  let g:purify_undercurl = 1
endif

if !exists('g:purify_inverse')
  let g:purify_inverse = 1
endif

let s:styles = {
      \ 'bold':      g:purify_bold == 1 ? 'bold' : 0,
      \ 'italic':    g:purify_italic == 1 ? 'italic' : 0,
      \ 'underline': g:purify_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:purify_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse':   g:purify_inverse == 1 ? 'inverse' : 0,
      \ }

" }}}

" Functions {{{

function! s:hi(group_name, options)
  let l:fg         = has_key(a:options, 'fg') ? copy(a:options.fg) : s:none
  let l:bg         = has_key(a:options, 'bg') ? a:options.bg : s:none
  let l:sp         = has_key(a:options, 'sp') ? a:options.sp : s:none
  let l:style_list = filter(has_key(a:options, 'styles') ? a:options.styles : [], 'type(v:val) == 1')
  let l:styles     = len(l:style_list) > 0 ? join(l:style_list, ',') : 'NONE'

  if l:sp.gui !=# 'NONE' && l:fg.gui ==# 'NONE' && !has('gui_running')
    let l:fg = copy(l:sp)
  endif

  execute 'highlight!' a:group_name
        \ 'guifg=' l:fg.gui 'ctermfg=' l:fg.cterm
        \ 'guibg=' l:bg.gui 'ctermbg=' l:bg.cterm
        \ 'gui='   l:styles 'cterm='   l:styles
        \ 'guisp=' l:sp.gui
endfunction

" }}}

" Syntax Groups (:h w18) {{{

call s:hi('Comment',        { 'fg': s:comment_grey, 'styles': [s:styles.italic] })

call s:hi('Constant',       { 'fg': s:yellow })
call s:hi('String',         { 'fg': s:yellow })
call s:hi('Character',      { 'fg': s:pink })
call s:hi('Number',         { 'fg': s:salmon })
call s:hi('Boolean',        { 'fg': s:salmon })
call s:hi('Float',          { 'fg': s:salmon })

call s:hi('Identifier',     { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('Function',       { 'fg': s:blue })

call s:hi('Statement',      { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('Conditional',    { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('Repeat',         { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('Label',          { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('Operator',       { 'fg': s:pink })
call s:hi('Keyword',        { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('Exception',      { 'fg': s:pink, 'styles': [s:styles.italic] })

call s:hi('PreProc',        { 'fg': s:pink })
call s:hi('Include',        { 'fg': s:pink })
call s:hi('Define',         { 'fg': s:pink })
call s:hi('Macro',          { 'fg': s:pink })
call s:hi('PreCondit',      { 'fg': s:pink })

call s:hi('Type',           { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('StorageClass',   { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('Structure',      { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('Typedef',        { 'fg': s:green, 'styles': [s:styles.italic] })


call s:hi('Special',        { 'fg': s:yellow })
call s:hi('SpecialChar',	{ 'fg': s:salmon, 'styles': [s:styles.underline] })
call s:hi('Tag',	        { 'fg': s:yellow, 'styles': [s:styles.underline] })
call s:hi('Delimiter',	    { 'fg': s:pink })
call s:hi('SpecialComment',	{ 'fg': s:salmon, 'styles': [s:styles.underline] })
call s:hi('Debug',	        { 'fg': s:yellow })


call s:hi('Underlined',	    { 'fg': s:blue })
call s:hi('Ignore',	        {})
call s:hi('Error',	        { 'fg': s:white, 'bg': s:red })
call s:hi('Todo',	        { 'fg': s:black, 'bg': s:yellow })

" }}}

" Highlighting Groups (:h highlight-groups) {{{

call s:hi('ColorColumn',  { 'bg': s:cursor_grey })
call s:hi('Conceal',      {})
call s:hi('Cursor',       { 'fg': s:black, 'bg': s:blue })
call s:hi('CursorIM',     {})
call s:hi('CursorColumn', {})
call s:hi('CursorLine',   { 'styles': [s:styles.underline] })
call s:hi('Directory',    { 'fg': s:blue })
call s:hi('DiffAdd',      { 'fg': s:black, 'bg': s:green })
call s:hi('DiffChange',   { 'fg': s:black, 'bg': s:yellow })
call s:hi('DiffDelete',   { 'fg': s:black, 'bg': s:salmon })
call s:hi('DiffText',     { 'fg': s:yellow, 'bg': s:black })
call s:hi('ErrorMsg',     { 'fg': s:salmon })
call s:hi('VertSplit',    { 'fg': s:pink })
call s:hi('Folded',       { 'fg': s:comment_grey })
call s:hi('FoldColumn',   {})
call s:hi('SignColumn',   {})
call s:hi('IncSearch',    { 'fg': s:yellow, 'bg': s:comment_grey })
call s:hi('LineNr',       { 'fg': s:gutter_grey_fg })
call s:hi('CursorLineNr', { 'fg': s:yellow })
call s:hi('MatchParen',   { 'fg': s:blue, 'styles': [s:styles.underline] })
call s:hi('ModeMsg',      {})
call s:hi('MoreMsg',      {})
call s:hi('NonText',      { 'fg': s:blur_grey })
call s:hi('Normal',       {})
call s:hi('Pmenu',        { 'bg': s:menu_grey })
call s:hi('PmenuSel',     { 'fg': s:black, 'bg': s:blue })
call s:hi('PmenuSbar',    { 'bg': s:blur_grey })
call s:hi('PmenuThumb',   { 'bg': s:pink })
call s:hi('Question',     { 'fg': s:pink })
call s:hi('Search',       { 'fg': s:blur_grey, 'bg': s:yellow })
call s:hi('QuickFixLine', { 'fg': s:blur_grey, 'bg': s:blue })
call s:hi('SpecialKey',   { 'fg': s:blur_grey })
call s:hi('SpellBad',     { 'fg': s:salmon, 'styles': [s:styles.underline] })
call s:hi('SpellCap',     { 'fg': s:dark_yellow })
call s:hi('SpellLocal',   { 'fg': s:dark_yellow })
call s:hi('SpellRare',    { 'fg': s:dark_yellow })
call s:hi('StatusLine',   { 'fg': s:white, 'bg': s:cursor_grey })
call s:hi('StatusLineNC', { 'fg': s:comment_grey })
call s:hi('TabLine',      { 'fg': s:comment_grey })
call s:hi('TabLineFill',  {})
call s:hi('TabLineSel',   { 'fg': s:white })
call s:hi('Title',        { 'fg': s:green })
call s:hi('Visual',       { 'fg': s:visual_black, 'bg': s:visual_grey })
call s:hi('VisualNOS',    { 'bg': s:visual_grey })
call s:hi('WarningMsg',   { 'fg': s:yellow })
call s:hi('WildMenu',     { 'fg': s:black, 'bg': s:blue })

" }}}

" Languages {{{

" HTML {{{

call s:hi('htmlError',          { 'fg': s:salmon })
call s:hi('htmlString',         { 'fg': s:yellow })
call s:hi('htmlValue',          { 'fg': s:yellow })
call s:hi('htmlEndTag',         { 'fg': s:blue })
call s:hi('htmlTag',            { 'fg': s:blue })
call s:hi('htmlTagN',           { 'fg': s:blue })
call s:hi('htmlTagError',       { 'fg': s:salmon })

call s:hi('htmlTagName',        { 'fg': s:pink })
call s:hi('htmlSpecialChar',    { 'fg': s:salmon })
call s:hi('htmlSpecialTagName', { 'fg': s:salmon, 'styles': [s:styles.italic] })
call s:hi('htmlArg',            { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('htmlEvent',          { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('htmlEventSQ',        { 'fg': s:salmon, 'styles': [s:styles.italic] })
call s:hi('htmlEventDQ',        { 'fg': s:salmon, 'styles': [s:styles.italic] })

call s:hi('htmlComment',        { 'fg': s:comment_grey })
call s:hi('htmlCommentError',   { 'fg': s:salmon })

function! s:overwrite_html_highlight()
    call s:hi('javaScript',	{ 'fg': s:white })
endfunction

augroup purify_html
    autocmd!
    autocmd Filetype html call s:overwrite_html_highlight()
augroup END

" }}}

" CSS {{{

call s:hi('cssAttrComma',         { 'fg': s:pink })
call s:hi('cssAttributeSelector', { 'fg': s:green })
call s:hi('cssBraces',            { 'fg': s:blue })
call s:hi('cssComment',           { 'fg': s:comment_grey, 'styles': [s:styles.italic] })
call s:hi('cssClassName',         { 'fg': s:yellow, 'styles': [s:styles.italic] })
call s:hi('cssClassNameDot',      { 'fg': s:pink })
call s:hi('cssDefinition',        { 'fg': s:yellow })
call s:hi('cssFontAttr',          { 'fg': s:yellow })
call s:hi('cssFontDescriptor',    { 'fg': s:yellow })
call s:hi('cssFunctionName',      { 'fg': s:blue })
call s:hi('cssIdentifier',        { 'fg': s:blue })
call s:hi('cssImportant',         { 'fg': s:yellow })
call s:hi('cssInclude',           { 'fg': s:white })
call s:hi('cssIncludeKeyword',    { 'fg': s:yellow })
call s:hi('cssMediaType',         { 'fg': s:yellow })
call s:hi('cssProp',              { 'fg': s:white })
call s:hi('cssPseudoClassId',     { 'fg': s:blue })
call s:hi('cssSelectorOp',        { 'fg': s:blue })
call s:hi('cssSelectorOp2',       { 'fg': s:blue })
call s:hi('cssTagName',           { 'fg': s:pink, 'styles': [s:styles.italic] })

" }}}

" SASS {{{

call s:hi('sassAmpersand',      { 'fg': s:salmon })
call s:hi('sassClass',          { 'fg': s:yellow, 'styles': [s:styles.italic] })
call s:hi('sassClassChar',      { 'fg': s:pink })
call s:hi('sassControl',        { 'fg': s:blue })
call s:hi('sassFunctionDecl',   { 'fg': s:pink })
call s:hi('sassExtend',         { 'fg': s:blue })
call s:hi('sassFor',            { 'fg': s:white })
call s:hi('sassFunction',       { 'fg': s:blue })
call s:hi('sassId',             { 'fg': s:blue })
call s:hi('sassInclude',        { 'fg': s:blue })
call s:hi('sassMedia',          { 'fg': s:blue })
call s:hi('sassMediaOperators', { 'fg': s:white })
call s:hi('sassMixin',          { 'fg': s:blue })
call s:hi('sassMixinName',      { 'fg': s:blue })
call s:hi('sassMixing',         { 'fg': s:blue })
call s:hi('sassVariable',       { 'fg': s:green })

" }}}

" SCSS {{{

call s:hi('scssExtend',       { 'fg': s:blue })
call s:hi('scssImport',       { 'fg': s:blue })
call s:hi('scssInclude',      { 'fg': s:blue })
call s:hi('scssMixin',        { 'fg': s:blue })
call s:hi('scssSelectorName', { 'fg': s:yellow })
call s:hi('scssVariable',     { 'fg': s:green })

" }}}

" LESS {{{

call s:hi('lessClass',     { 'fg': s:yellow, 'styles': [s:styles.italic] })
call s:hi('lessClassChar', { 'fg': s:pink })

" }}}

" JSON {{{

call s:hi('jsonBraces',             { 'fg': s:blue })
call s:hi('jsonString',             { 'fg': s:green })
call s:hi('jsonNoise',              { 'fg': s:pink })
call s:hi('jsonKeyword',            { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('jsonKeywordMatch',       { 'fg': s:white, 'styles': [s:styles.italic] })
call s:hi('jsonEscape',             { 'fg': s:salmon })

call s:hi('jsonStringSQError',      { 'fg': s:red })
call s:hi('jsonSemicolonError',     { 'fg': s:red })
call s:hi('jsonTrailingCommaError', { 'fg': s:red })
call s:hi('jsonMissingCommaError',  { 'fg': s:red })

" }}}

" XML {{{

call s:hi('xmlTagName',   { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('xmlTag',       { 'fg': s:blue })
call s:hi('xmlEndTag',    { 'fg': s:pink })
call s:hi('xmlNamespace', { 'fg': s:blue })
call s:hi('xmlString',    { 'fg': s:yellow })
call s:hi('xmlAttrib',    { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('xmlComment',   { 'fg': s:comment_grey })
call s:hi('xmlError',     { 'fg': s:red })
call s:hi('xmlEntity',    { 'fg': s:red })
" TODO: need regex to add syntax for close tag ( </ > )

" }}}

" JAVASCRIPT {{{

call s:hi('javaScriptComment',          { 'fg': s:comment_grey, 'styles': [s:styles.italic] })
call s:hi('javaScriptLineComment',      { 'fg': s:comment_grey, 'styles': [s:styles.italic] })
call s:hi('javaScriptCommentTodo',      { 'fg': s:black, 'bg': s:yellow })

call s:hi('javaScriptSpecial',          { 'fg': s:yellow })
call s:hi('javaScriptStringS',          { 'fg': s:yellow })
call s:hi('javaScriptStringD',          { 'fg': s:yellow })
call s:hi('javaScriptCharacter',        { 'fg': s:yellow })
call s:hi('javaScriptSpecialCharacter', { 'fg': s:yellow })
call s:hi('javaScriptType',             { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('javaScriptOperator',         { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('javaScriptNull',             { 'fg': s:salmon })
call s:hi('javaScriptNumber',           { 'fg': s:salmon })
call s:hi('javaScriptRegexpString',     { 'fg': s:yellow })

call s:hi('javaScriptStatement',        { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('javaScriptFunction',         { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('javaScriptBraces',           { 'fg': s:blue })
call s:hi('javaScriptParens',           { 'fg': s:pink })
call s:hi('javaScriptError',	        { 'fg': s:white, 'bg': s:red })
call s:hi('javaScrParenError',	        { 'fg': s:white, 'bg': s:red })

call s:hi('javaScriptException',        { 'fg': s:yellow, 'styles': [s:styles.italic] })
call s:hi('javaScriptGlobal',	        { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('javaScriptMember',	        { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('javaScriptDeprecated',	    { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('javaScriptReserved',	        { 'fg': s:blue, 'styles': [s:styles.italic] })

function! s:overwrite_javascript_highlight()
    silent! syn clear javaScriptIdentifier
    silent! syn clear javaScriptReserved
    call s:hi('javascriptEndColons',         { 'fg': s:pink })
    call s:hi('javascriptLogicSymbols',      { 'fg': s:salmon })
    call s:hi('javascriptOpSymbols',         { 'fg': s:pink })
    call s:hi('javascriptLabel',             { 'fg': s:pink, 'styles': [s:styles.italic] })
    call s:hi('javaScriptThis',              { 'fg': s:blue, 'styles': [s:styles.italic] })
    call s:hi('javaScriptCustomIdentifier',  { 'fg': s:green, 'styles': [s:styles.italic] })
    call s:hi('javaScriptCustomReserved',    { 'fg': s:blue, 'styles': [s:styles.italic] })
endfunction

augroup purify_javascript
    autocmd!
    autocmd Filetype javascript call s:overwrite_javascript_highlight()
augroup END

" }}}

" TYPESCRIPT {{{

" https://github.com/leafgarland/typescript-vim/pull/166
let g:typescript_ignore_browserwords = 1

" https://github.com/leafgarland/typescript-vim
call s:hi('typescriptBrowserObjects', { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('typescriptDOMObjects',     { 'fg': s:blue, 'styles': [s:styles.italic] })

call s:hi('typescriptExceptions',     { 'fg': s:yellow, 'styles': [s:styles.italic] })
call s:hi('typescriptFuncKeyword',    { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('typescriptReserved',       { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('typescriptOperator',       { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('typescriptOpSymbols',      { 'fg': s:pink })
call s:hi('typescriptLogicSymbols',   { 'fg': s:salmon })
call s:hi('typescriptEndColons',      { 'fg': s:pink })

" }}}

" PYTHON {{{

call s:hi('pythonStatement',     { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('pythonConditional',   { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('pythonRepeat',        { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('pythonOperator',      { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('pythonException',     { 'fg': s:yellow, 'styles': [s:styles.italic] })
call s:hi('pythonInclude',       { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('pythonAsync',         { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('pythonDecorator',     { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('pythonDecoratorName', { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('pythonFunction',      { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('pythonComment',       { 'fg': s:comment_grey, 'styles': [s:styles.italic] })
call s:hi('pythonTodo',          { 'fg': s:blur_grey, 'bg': s:yellow })
call s:hi('pythonString',        { 'fg': s:yellow })
call s:hi('pythonRawString',     { 'fg': s:yellow })
call s:hi('pythonNumber',        { 'fg': s:salmon })
call s:hi('pythonBuiltin',       { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('pythonExceptions',    { 'fg': s:salmon })
call s:hi('pythonSpaceError',    { 'fg': s:red })

function! s:overwrite_python_highlight()
    call s:hi('pythonBraces',       { 'fg': s:blue })
    call s:hi('pythonParens',       { 'fg': s:pink })
    call s:hi('pythonOpSymbols',    { 'fg': s:pink })
    call s:hi('pythonEndColons',    { 'fg': s:pink })
    call s:hi('pythonLogicSymbols', { 'fg': s:blue })
endfunction

augroup purify_python
    autocmd!
    autocmd Filetype python call s:overwrite_python_highlight()
augroup END

" }}}

" GO {{{

call s:hi('goDirective',    { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('goDeclaration',  { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('goDeclType',     { 'fg': s:blue, 'styles': [s:styles.italic] })

call s:hi('goStatement',    { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('goConditional',  { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('goLabel',        { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('goRepeat',       { 'fg': s:pink, 'styles': [s:styles.italic] })

call s:hi('goType',         { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('goSignedInts',   { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('goUnsignedInts', { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('goFloats',       { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('goComplexes',    { 'fg': s:green, 'styles': [s:styles.italic] })

call s:hi('goBuiltins',     { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('goConstants',    { 'fg': s:salmon, 'styles': [s:styles.italic] })
call s:hi('goCharacter',    { 'fg': s:yellow })

function! s:overwrite_go_highlight()
    call s:hi('goDeclarationOverwrite', { 'fg': s:green, 'styles': [s:styles.italic] })
    call s:hi('goBraces',               { 'fg': s:blue })
    call s:hi('goParens',               { 'fg': s:pink })
    call s:hi('goOpSymbols',            { 'fg': s:pink })
    call s:hi('goEndColons',            { 'fg': s:pink })
    call s:hi('goLogicSymbols',         { 'fg': s:blue })
endfunction

augroup purify_go
    autocmd!
    autocmd Filetype go call s:overwrite_go_highlight()
augroup END

" }}}

" C {{{

call s:hi('cStatement',        { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('cLabel',            { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('cConditional',      { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('cRepeat',           { 'fg': s:pink, 'styles': [s:styles.italic] })

call s:hi('cTodo',             { 'fg': s:blur_grey, 'bg': s:yellow })
call s:hi('cBadContinuation',  { 'fg': s:red })
call s:hi('cSpecial',          { 'fg': s:salmon })

call s:hi('cFormat',           { 'fg': s:yellow })
call s:hi('cString',           { 'fg': s:yellow })
call s:hi('cCppString',        { 'fg': s:yellow })
call s:hi('cCppSkip',          { 'fg': s:yellow })
call s:hi('cCharacter',        { 'fg': s:salmon })
call s:hi('cSpecialCharacter', { 'fg': s:salmon })
call s:hi('cSpecialError',     { 'fg': s:red })
call s:hi('cSpaceError',       { 'bg': s:red })

call s:hi('cComment',          { 'fg': s:comment_grey, 'styles': [s:styles.italic] })
call s:hi('cType',             { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('cStructure',        { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('cStorageClass',     { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('cConstant',         { 'fg': s:salmon })

call s:hi('cDefine',           { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('cInclude',          { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('cIncluded',         { 'fg': s:yellow })

function! s:overwrite_c_highlight()
    call s:hi('cDeclarationOverwrite', { 'fg': s:green, 'styles': [s:styles.italic] })
    call s:hi('cBraces',               { 'fg': s:blue })
    call s:hi('cParens',               { 'fg': s:pink })
    call s:hi('cOpSymbols',            { 'fg': s:pink })
    call s:hi('cEndColons',            { 'fg': s:pink })
    call s:hi('cLogicSymbols',         { 'fg': s:blue })
endfunction

augroup purify_c
    autocmd!
    autocmd Filetype c call s:overwrite_c_highlight()
augroup END

" }}}

" CPP {{{

call s:hi('cppStatement',    { 'fg': s:pink, 'styles': [s:styles.italic] })
call s:hi('cppAccess',       { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('cppModifier',     { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('cppType',         { 'fg': s:green, 'styles': [s:styles.italic] })
call s:hi('cppExceptions',   { 'fg': s:yellow, 'styles': [s:styles.italic] })
call s:hi('cppOperator',     { 'fg': s:salmon, 'styles': [s:styles.italic] })
call s:hi('cppStructure',    { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('cppConstant',     { 'fg': s:salmon, 'styles': [s:styles.italic] })
call s:hi('cppStorageClass', { 'fg': s:salmon, 'styles': [s:styles.italic] })
call s:hi('cppExceptions',   { 'fg': s:salmon, 'styles': [s:styles.italic] })
call s:hi('cppBoolean',      { 'fg': s:salmon })
call s:hi('cppNumber',       { 'fg': s:salmon })
call s:hi('cppMinMax',       { 'fg': s:red })

function! s:overwrite_cpp_highlight()
    call s:hi('cppDeclarationOverwrite', { 'fg': s:green, 'styles': [s:styles.italic] })
    call s:hi('cppBraces',               { 'fg': s:blue })
    call s:hi('cppParens',               { 'fg': s:pink })
    call s:hi('cppOpSymbols',            { 'fg': s:pink })
    call s:hi('cppEndColons',            { 'fg': s:pink })
    call s:hi('cppLogicSymbols',         { 'fg': s:blue })
endfunction

augroup purify_cpp
    autocmd!
    autocmd Filetype cpp call s:overwrite_cpp_highlight()
augroup END

" }}}

" Ruby {{{

call s:hi('rubyInclude',          { 'fg': s:blue, 'styles': [s:styles.italic] })
call s:hi('rubyStringDelimiter',  { 'fg': s:yellow })

function! s:overwrite_ruby_highlight()
    call s:hi('rubyBraces',        { 'fg': s:blue })
    call s:hi('rubyParens',        { 'fg': s:pink })
    call s:hi('rubyOpSymbols',     { 'fg': s:pink })
    call s:hi('rubyEndColons',     { 'fg': s:pink })
    call s:hi('rubyLogicSymbols',  { 'fg': s:blue })
endfunction

augroup purify_ruby
    autocmd!
    autocmd Filetype ruby call s:overwrite_ruby_highlight()
augroup END

" }}}

" }}}

" Frameworks {{{

" Reactjs {{{
" Support for 'MaxMEllon/vim-jsx-pretty'

call s:hi('jsxTag',            { 'fg': s:white })
call s:hi('jsxTagName',        { 'fg': s:pink })
call s:hi('jsxComponentName',  { 'fg': s:salmon })
call s:hi('jsxOpenPunct',      { 'fg': s:blue })
call s:hi('jsxClosePunct',     { 'fg': s:blue })
call s:hi('jsxCloseString',    { 'fg': s:blue })

function! s:overwrite_javascriptreact_highlight()
    silent! syn clear javaScriptIdentifier
    silent! syn clear javaScriptReserved
    call s:hi('jsxDeclarationOverwrite',     { 'fg': s:green, 'styles': [s:styles.italic] })
    call s:hi('jsxBraces',                   { 'fg': s:blue })
    call s:hi('jsxParens',                   { 'fg': s:pink })
    call s:hi('jsxOpSymbols',                { 'fg': s:pink })
    call s:hi('jsxEndColons',                { 'fg': s:pink })
    call s:hi('jsxLogicSymbols',             { 'fg': s:blue })
    call s:hi('jsxCustomIdentifier',         { 'fg': s:green, 'styles': [s:styles.italic] })
    call s:hi('jsxCustomReserved',           { 'fg': s:blue, 'styles': [s:styles.italic] })

    " Javascript init (in case you open jsx file only)
    call s:hi('javascriptEndColons',         { 'fg': s:pink })
    call s:hi('javascriptLogicSymbols',      { 'fg': s:salmon })
    call s:hi('javascriptOpSymbols',         { 'fg': s:pink })
    call s:hi('javascriptLabel',             { 'fg': s:pink, 'styles': [s:styles.italic] })
    call s:hi('javaScriptThis',              { 'fg': s:blue, 'styles': [s:styles.italic] })
    call s:hi('javaScriptCustomIdentifier',  { 'fg': s:green, 'styles': [s:styles.italic] })
    call s:hi('javaScriptCustomReserved',    { 'fg': s:blue, 'styles': [s:styles.italic] })
endfunction

augroup purify_jsx
    autocmd!
    autocmd Filetype javascriptreact call s:overwrite_javascriptreact_highlight()
augroup END

" }}}

" }}}

" Plugins {{{

" fzf.vim
" https://github.com/junegunn/fzf/wiki/Color-schemes
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'String'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'info':    ['fg', 'Keyword'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Statement'],
  \ 'pointer': ['fg', 'Statement'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" vim-easymotion
call s:hi("EasyMotionTarget",        { "fg": s:green })
call s:hi("EasyMotionTarget2First",  { "fg": s:green })
call s:hi("EasyMotionTarget2Second", { "fg": s:blue })
call s:hi("EasyMotionShade",         { "fg": s:comment_grey })

" }}}

" Try setting background and foreground colors if user using GUI version
if has("gui_running") || exists('g:GuiLoaded')
    hi Normal guifg=#FFFFFF
    hi Normal guibg=#252834
endif

execute 'set background=dark'

