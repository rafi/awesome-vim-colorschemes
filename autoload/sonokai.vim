" =============================================================================
" URL: https://github.com/sainnhe/sonokai
" Filename: autoload/sonokai.vim
" Author: sainnhe
" Email: i@sainnhe.dev
" License: MIT License
" =============================================================================

function! sonokai#get_configuration() "{{{
  return {
        \ 'style': get(g:, 'sonokai_style', 'default'),
        \ 'colors_override': get(g:, 'sonokai_colors_override', {}),
        \ 'transparent_background': get(g:, 'sonokai_transparent_background', 0),
        \ 'dim_inactive_windows': get(g:, 'sonokai_dim_inactive_windows', 0),
        \ 'disable_italic_comment': get(g:, 'sonokai_disable_italic_comment', 0),
        \ 'enable_italic': get(g:, 'sonokai_enable_italic', 0),
        \ 'cursor': get(g:, 'sonokai_cursor', 'auto'),
        \ 'menu_selection_background': get(g:, 'sonokai_menu_selection_background', 'blue'),
        \ 'spell_foreground': get(g:, 'sonokai_spell_foreground', 'none'),
        \ 'show_eob': get(g:, 'sonokai_show_eob', 1),
        \ 'current_word': get(g:, 'sonokai_current_word', get(g:, 'sonokai_transparent_background', 0) == 0 ? 'grey background' : 'bold'),
        \ 'lightline_disable_bold': get(g:, 'sonokai_lightline_disable_bold', 0),
        \ 'diagnostic_text_highlight': get(g:, 'sonokai_diagnostic_text_highlight', 0),
        \ 'diagnostic_line_highlight': get(g:, 'sonokai_diagnostic_line_highlight', 0),
        \ 'diagnostic_virtual_text': get(g:, 'sonokai_diagnostic_virtual_text', 'grey'),
        \ 'disable_terminal_colors': get(g:, 'sonokai_disable_terminal_colors', 0),
        \ 'better_performance': get(g:, 'sonokai_better_performance', 0),
        \ }
endfunction "}}}
function! sonokai#get_palette(style, colors_override) "{{{
  if a:style ==# 'default'
    let palette = {
          \ 'black':      ['#181819',   '232'],
          \ 'bg_dim':     ['#222327',   '232'],
          \ 'bg0':        ['#2c2e34',   '235'],
          \ 'bg1':        ['#33353f',   '236'],
          \ 'bg2':        ['#363944',   '236'],
          \ 'bg3':        ['#3b3e48',   '237'],
          \ 'bg4':        ['#414550',   '237'],
          \ 'bg_red':     ['#ff6077',   '203'],
          \ 'diff_red':   ['#55393d',   '52'],
          \ 'bg_green':   ['#a7df78',   '107'],
          \ 'diff_green': ['#394634',   '22'],
          \ 'bg_blue':    ['#85d3f2',   '110'],
          \ 'diff_blue':  ['#354157',   '17'],
          \ 'diff_yellow':['#4e432f',   '54'],
          \ 'fg':         ['#e2e2e3',   '250'],
          \ 'red':        ['#fc5d7c',   '203'],
          \ 'orange':     ['#f39660',   '215'],
          \ 'yellow':     ['#e7c664',   '179'],
          \ 'green':      ['#9ed072',   '107'],
          \ 'blue':       ['#76cce0',   '110'],
          \ 'purple':     ['#b39df3',   '176'],
          \ 'grey':       ['#7f8490',   '246'],
          \ 'grey_dim':   ['#595f6f',   '240'],
          \ 'none':       ['NONE',      'NONE']
          \ }
  elseif a:style ==# 'shusia'
    let palette = {
          \ 'black':      ['#1a181a',   '232'],
          \ 'bg_dim':     ['#211f21',   '232'],
          \ 'bg0':        ['#2d2a2e',   '235'],
          \ 'bg1':        ['#37343a',   '236'],
          \ 'bg2':        ['#3b383e',   '236'],
          \ 'bg3':        ['#423f46',   '237'],
          \ 'bg4':        ['#49464e',   '237'],
          \ 'bg_red':     ['#ff6188',   '203'],
          \ 'diff_red':   ['#55393d',   '52'],
          \ 'bg_green':   ['#a9dc76',   '107'],
          \ 'diff_green': ['#394634',   '22'],
          \ 'bg_blue':    ['#78dce8',   '110'],
          \ 'diff_blue':  ['#354157',   '17'],
          \ 'diff_yellow':['#4e432f',   '54'],
          \ 'fg':         ['#e3e1e4',   '250'],
          \ 'red':        ['#f85e84',   '203'],
          \ 'orange':     ['#ef9062',   '215'],
          \ 'yellow':     ['#e5c463',   '179'],
          \ 'green':      ['#9ecd6f',   '107'],
          \ 'blue':       ['#7accd7',   '110'],
          \ 'purple':     ['#ab9df2',   '176'],
          \ 'grey':       ['#848089',   '246'],
          \ 'grey_dim':   ['#605d68',   '240'],
          \ 'none':       ['NONE',      'NONE']
          \ }
  elseif a:style ==# 'andromeda'
    let palette = {
          \ 'black':      ['#181a1c',   '232'],
          \ 'bg_dim':     ['#252630',   '232'],
          \ 'bg0':        ['#2b2d3a',   '235'],
          \ 'bg1':        ['#333648',   '236'],
          \ 'bg2':        ['#363a4e',   '236'],
          \ 'bg3':        ['#393e53',   '237'],
          \ 'bg4':        ['#3f445b',   '237'],
          \ 'bg_red':     ['#ff6188',   '203'],
          \ 'diff_red':   ['#55393d',   '52'],
          \ 'bg_green':   ['#a9dc76',   '107'],
          \ 'diff_green': ['#394634',   '22'],
          \ 'bg_blue':    ['#77d5f0',   '110'],
          \ 'diff_blue':  ['#354157',   '17'],
          \ 'diff_yellow':['#4e432f',   '54'],
          \ 'fg':         ['#e1e3e4',   '250'],
          \ 'red':        ['#fb617e',   '203'],
          \ 'orange':     ['#f89860',   '215'],
          \ 'yellow':     ['#edc763',   '179'],
          \ 'green':      ['#9ed06c',   '107'],
          \ 'blue':       ['#6dcae8',   '110'],
          \ 'purple':     ['#bb97ee',   '176'],
          \ 'grey':       ['#7e8294',   '246'],
          \ 'grey_dim':   ['#5a5e7a',   '240'],
          \ 'none':       ['NONE',      'NONE']
          \ }
  elseif a:style ==# 'atlantis'
    let palette = {
          \ 'black':      ['#181a1c',   '232'],
          \ 'bg_dim':     ['#24272e',   '232'],
          \ 'bg0':        ['#2a2f38',   '235'],
          \ 'bg1':        ['#333846',   '236'],
          \ 'bg2':        ['#373c4b',   '236'],
          \ 'bg3':        ['#3d4455',   '237'],
          \ 'bg4':        ['#424b5b',   '237'],
          \ 'bg_red':     ['#ff6d7e',   '203'],
          \ 'diff_red':   ['#55393d',   '52'],
          \ 'bg_green':   ['#a5e179',   '107'],
          \ 'diff_green': ['#394634',   '22'],
          \ 'bg_blue':    ['#7ad5f1',   '110'],
          \ 'diff_blue':  ['#354157',   '17'],
          \ 'diff_yellow':['#4e432f',   '54'],
          \ 'fg':         ['#e1e3e4',   '250'],
          \ 'red':        ['#ff6578',   '203'],
          \ 'orange':     ['#f69c5e',   '215'],
          \ 'yellow':     ['#eacb64',   '179'],
          \ 'green':      ['#9dd274',   '107'],
          \ 'blue':       ['#72cce8',   '110'],
          \ 'purple':     ['#ba9cf3',   '176'],
          \ 'grey':       ['#828a9a',   '246'],
          \ 'grey_dim':   ['#5a6477',   '240'],
          \ 'none':       ['NONE',      'NONE']
          \ }
  elseif a:style ==# 'maia'
    let palette = {
          \ 'black':      ['#1c1e1f',   '232'],
          \ 'bg_dim':     ['#21282c',   '232'],
          \ 'bg0':        ['#273136',   '235'],
          \ 'bg1':        ['#313b42',   '236'],
          \ 'bg2':        ['#353f46',   '236'],
          \ 'bg3':        ['#3a444b',   '237'],
          \ 'bg4':        ['#414b53',   '237'],
          \ 'bg_red':     ['#ff6d7e',   '203'],
          \ 'diff_red':   ['#55393d',   '52'],
          \ 'bg_green':   ['#a2e57b',   '107'],
          \ 'diff_green': ['#394634',   '22'],
          \ 'bg_blue':    ['#7cd5f1',   '110'],
          \ 'diff_blue':  ['#354157',   '17'],
          \ 'diff_yellow':['#4e432f',   '54'],
          \ 'fg':         ['#e1e2e3',   '250'],
          \ 'red':        ['#f76c7c',   '203'],
          \ 'orange':     ['#f3a96a',   '215'],
          \ 'yellow':     ['#e3d367',   '179'],
          \ 'green':      ['#9cd57b',   '107'],
          \ 'blue':       ['#78cee9',   '110'],
          \ 'purple':     ['#baa0f8',   '176'],
          \ 'grey':       ['#82878b',   '246'],
          \ 'grey_dim':   ['#55626d',   '240'],
          \ 'none':       ['NONE',      'NONE']
          \ }
  elseif a:style ==# 'espresso'
    let palette = {
          \ 'black':      ['#1f1e1c',   '232'],
          \ 'bg_dim':     ['#242120',   '232'],
          \ 'bg0':        ['#312c2b',   '235'],
          \ 'bg1':        ['#393230',   '236'],
          \ 'bg2':        ['#413937',   '236'],
          \ 'bg3':        ['#49403c',   '237'],
          \ 'bg4':        ['#4e433f',   '237'],
          \ 'bg_red':     ['#fd6883',   '203'],
          \ 'diff_red':   ['#55393d',   '52'],
          \ 'bg_green':   ['#adda78',   '107'],
          \ 'diff_green': ['#394634',   '22'],
          \ 'bg_blue':    ['#85dad2',   '110'],
          \ 'diff_blue':  ['#354157',   '17'],
          \ 'diff_yellow':['#4e432f',   '54'],
          \ 'fg':         ['#e4e3e1',   '250'],
          \ 'red':        ['#f86882',   '203'],
          \ 'orange':     ['#f08d71',   '215'],
          \ 'yellow':     ['#f0c66f',   '179'],
          \ 'green':      ['#a6cd77',   '107'],
          \ 'blue':       ['#81d0c9',   '110'],
          \ 'purple':     ['#9fa0e1',   '176'],
          \ 'grey':       ['#90817b',   '246'],
          \ 'grey_dim':   ['#6a5e59',   '240'],
          \ 'none':       ['NONE',      'NONE']
          \ }
  endif
  return extend(palette, a:colors_override)
endfunction "}}}
function! sonokai#highlight(group, fg, bg, ...) "{{{
  execute 'highlight' a:group
        \ 'guifg=' . a:fg[0]
        \ 'guibg=' . a:bg[0]
        \ 'ctermfg=' . a:fg[1]
        \ 'ctermbg=' . a:bg[1]
        \ 'gui=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'cterm=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'guisp=' . (a:0 >= 2 ?
          \ a:2[0] :
          \ 'NONE')
endfunction "}}}
function! sonokai#syn_gen(path, last_modified, msg) "{{{
  " Generate the `after/syntax` directory.
  let full_content = join(readfile(a:path), "\n") " Get the content of `colors/sonokai.vim`
  let syn_conent = []
  let rootpath = sonokai#syn_rootpath(a:path) " Get the path to place the `after/syntax` directory.
  call substitute(full_content, '" syn_begin.\{-}syn_end', '\=add(syn_conent, submatch(0))', 'g') " Search for 'syn_begin.\{-}syn_end' (non-greedy) and put all the search results into a list.
  for content in syn_conent
    let syn_list = []
    call substitute(matchstr(matchstr(content, 'syn_begin:.\{-}{{{'), ':.\{-}{{{'), '\(\w\|-\)\+', '\=add(syn_list, submatch(0))', 'g') " Get the file types. }}}}}}
    for syn in syn_list
      call sonokai#syn_write(rootpath, syn, content) " Write the content.
    endfor
  endfor
  call sonokai#syn_write(rootpath, 'text', "let g:sonokai_last_modified = '" . a:last_modified . "'") " Write the last modified time to `after/syntax/text/sonokai.vim`
  let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
  if a:msg ==# 'update'
    echohl WarningMsg | echom '[sonokai] Updated ' . rootpath . syntax_relative_path | echohl None
    call sonokai#ftplugin_detect(a:path)
  else
    echohl WarningMsg | echom '[sonokai] Generated ' . rootpath . syntax_relative_path | echohl None
    execute 'set runtimepath+=' . fnamemodify(rootpath, ':p') . 'after'
  endif
endfunction "}}}
function! sonokai#syn_write(rootpath, syn, content) "{{{
  " Write the content.
  let syn_path = a:rootpath . '/after/syntax/' . a:syn . '/sonokai.vim' " The path of a syntax file.
  " create a new file if it doesn't exist
  if !filereadable(syn_path)
    call mkdir(a:rootpath . '/after/syntax/' . a:syn, 'p')
    call writefile([
          \ "if !exists('g:colors_name') || g:colors_name !=# 'sonokai'",
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if the current color scheme is not sonokai.
    call writefile([
          \ "if index(g:sonokai_loaded_file_types, '" . a:syn . "') ==# -1",
          \ "    call add(g:sonokai_loaded_file_types, '" . a:syn . "')",
          \ 'else',
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if this file type has already been loaded.
  endif
  " If there is something like `call sonokai#highlight()`, then add
  " code to initialize the palette and configuration.
  if matchstr(a:content, 'sonokai#highlight') !=# ''
    call writefile([
          \ 'let s:configuration = sonokai#get_configuration()',
          \ 'let s:palette = sonokai#get_palette(s:configuration.style, s:configuration.colors_override)'
          \ ], syn_path, 'a')
  endif
  " Append the content.
  call writefile(split(a:content, "\n"), syn_path, 'a')
  " Add modeline.
  call writefile(['" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:'], syn_path, 'a')
endfunction "}}}
function! sonokai#syn_rootpath(path) "{{{
  " Get the directory where `after/syntax` is generated.
  if (matchstr(a:path, '^/usr/share') ==# '') " Return the plugin directory. The `after/syntax` directory should never be generated in `/usr/share`, even if you are a root user.
    return fnamemodify(a:path, ':p:h:h')
  else " Use vim home directory.
    if has('nvim')
      return stdpath('config')
    else
      return expand('~') . '/.vim'
    endif
  endif
endfunction "}}}
function! sonokai#syn_newest(path, last_modified) "{{{
  " Determine whether the current syntax files are up to date by comparing the last modified time in `colors/sonokai.vim` and `after/syntax/text/sonokai.vim`.
  let rootpath = sonokai#syn_rootpath(a:path)
  execute 'source ' . rootpath . '/after/syntax/text/sonokai.vim'
  return a:last_modified ==# g:sonokai_last_modified ? 1 : 0
endfunction "}}}
function! sonokai#syn_clean(path, msg) "{{{
  " Clean the `after/syntax` directory.
  let rootpath = sonokai#syn_rootpath(a:path)
  " Remove `after/syntax/**/sonokai.vim`.
  let file_list = split(globpath(rootpath, 'after/syntax/**/sonokai.vim'), "\n")
  for file in file_list
    call delete(file)
  endfor
  " Remove empty directories.
  let dir_list = split(globpath(rootpath, 'after/syntax/*'), "\n")
  for dir in dir_list
    if globpath(dir, '*') ==# ''
      call delete(dir, 'd')
    endif
  endfor
  if globpath(rootpath . '/after/syntax', '*') ==# ''
    call delete(rootpath . '/after/syntax', 'd')
  endif
  if globpath(rootpath . '/after', '*') ==# ''
    call delete(rootpath . '/after', 'd')
  endif
  if a:msg
    let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
    echohl WarningMsg | echom '[sonokai] Cleaned ' . rootpath . syntax_relative_path | echohl None
  endif
endfunction "}}}
function! sonokai#syn_exists(path) "{{{
  return filereadable(sonokai#syn_rootpath(a:path) . '/after/syntax/text/sonokai.vim')
endfunction "}}}
function! sonokai#ftplugin_detect(path) "{{{
  " Check if /after/ftplugin exists.
  " This directory is generated in earlier versions, users may need to manually clean it.
  let rootpath = sonokai#syn_rootpath(a:path)
  if filereadable(sonokai#syn_rootpath(a:path) . '/after/ftplugin/text/sonokai.vim')
    let ftplugin_relative_path = has('win32') ? '\after\ftplugin' : '/after/ftplugin'
    echohl WarningMsg | echom '[sonokai] Detected ' . rootpath . ftplugin_relative_path | echohl None
    echohl WarningMsg | echom '[sonokai] This directory is no longer used, you may need to manually delete it.' | echohl None
  endif
endfunction "}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
