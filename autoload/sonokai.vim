" =============================================================================
" URL: https://github.com/sainnhe/sonokai
" Filename: autoload/sonokai.vim
" Author: sainnhe
" Email: sainnhe@gmail.com
" License: MIT License
" =============================================================================

function! sonokai#get_configuration() "{{{
  return {
        \ 'style': get(g:, 'sonokai_style', 'default'),
        \ 'transparent_background': get(g:, 'sonokai_transparent_background', 0),
        \ 'disable_italic_comment': get(g:, 'sonokai_disable_italic_comment', 0),
        \ 'enable_italic': get(g:, 'sonokai_enable_italic', 0),
        \ 'cursor': get(g:, 'sonokai_cursor', 'auto'),
        \ 'menu_selection_background': get(g:, 'sonokai_menu_selection_background', 'green'),
        \ 'sign_column_background': get(g:, 'sonokai_sign_column_background', 'default'),
        \ 'current_word': get(g:, 'sonokai_current_word', get(g:, 'sonokai_transparent_background', 0) == 0 ? 'grey background' : 'bold'),
        \ 'lightline_disable_bold': get(g:, 'sonokai_lightline_disable_bold', 0),
        \ 'diagnostic_line_highlight': get(g:, 'sonokai_diagnostic_line_highlight', 0),
        \ 'better_performance': get(g:, 'sonokai_better_performance', 0),
        \ }
endfunction "}}}
function! sonokai#get_palette(style) "{{{
  if a:style ==# 'default'
    let palette = {
          \ 'black':      ['#181819',   '237',  'DarkGrey'],
          \ 'bg0':        ['#2c2e34',   '235',  'Black'],
          \ 'bg1':        ['#30323a',   '236',  'DarkGrey'],
          \ 'bg2':        ['#363944',   '236',  'DarkGrey'],
          \ 'bg3':        ['#3b3e48',   '237',  'DarkGrey'],
          \ 'bg4':        ['#414550',   '237',  'Grey'],
          \ 'bg_red':     ['#ff6077',   '203',  'Red'],
          \ 'diff_red':   ['#473536',   '52',   'DarkRed'],
          \ 'bg_green':   ['#a7df78',   '107',  'Green'],
          \ 'diff_green': ['#384034',   '22',   'DarkGreen'],
          \ 'bg_blue':    ['#85d3f2',   '110',  'Blue'],
          \ 'diff_blue':  ['#323e47',   '17',   'DarkBlue'],
          \ 'fg':         ['#e2e2e3',   '250',  'White'],
          \ 'red':        ['#fc5d7c',   '203',  'Red'],
          \ 'orange':     ['#f39660',   '215',  'Orange'],
          \ 'yellow':     ['#e7c664',   '179',  'Yellow'],
          \ 'green':      ['#9ed072',   '107',  'Green'],
          \ 'blue':       ['#76cce0',   '110',  'Blue'],
          \ 'purple':     ['#b39df3',   '176',  'Magenta'],
          \ 'grey':       ['#7f8490',   '246',  'LightGrey'],
          \ 'none':       ['NONE',      'NONE', 'NONE']
          \ }
  elseif a:style ==# 'shusia'
    let palette = {
          \ 'black':      ['#1a181a',   '237',  'DarkGrey'],
          \ 'bg0':        ['#2d2a2e',   '235',  'Black'],
          \ 'bg1':        ['#343136',   '236',  'DarkGrey'],
          \ 'bg2':        ['#3b383e',   '236',  'DarkGrey'],
          \ 'bg3':        ['#423f46',   '237',  'DarkGrey'],
          \ 'bg4':        ['#49464e',   '237',  'Grey'],
          \ 'bg_red':     ['#ff6188',   '203',  'Red'],
          \ 'diff_red':   ['#3d2226',   '52',   'DarkRed'],
          \ 'bg_green':   ['#a9dc76',   '107',  'Green'],
          \ 'diff_green': ['#253a26',   '22',   'DarkGreen'],
          \ 'bg_blue':    ['#78dce8',   '110',  'Blue'],
          \ 'diff_blue':  ['#25223e',   '17',   'DarkBlue'],
          \ 'fg':         ['#e3e1e4',   '250',  'White'],
          \ 'red':        ['#f85e84',   '203',  'Red'],
          \ 'orange':     ['#ef9062',   '215',  'Orange'],
          \ 'yellow':     ['#e5c463',   '179',  'Yellow'],
          \ 'green':      ['#9ecd6f',   '107',  'Green'],
          \ 'blue':       ['#7accd7',   '110',  'Blue'],
          \ 'purple':     ['#ab9df2',   '176',  'Magenta'],
          \ 'grey':       ['#848089',   '246',  'LightGrey'],
          \ 'none':       ['NONE',      'NONE', 'NONE']
          \ }
  elseif a:style ==# 'andromeda'
    let palette = {
          \ 'black':      ['#181a1c',   '237',  'DarkGrey'],
          \ 'bg0':        ['#2b2d3a',   '235',  'Black'],
          \ 'bg1':        ['#2f3242',   '236',  'DarkGrey'],
          \ 'bg2':        ['#363a4e',   '236',  'DarkGrey'],
          \ 'bg3':        ['#393e53',   '237',  'DarkGrey'],
          \ 'bg4':        ['#3f445b',   '237',  'Grey'],
          \ 'bg_red':     ['#ff6188',   '203',  'Red'],
          \ 'diff_red':   ['#473536',   '52',   'DarkRed'],
          \ 'bg_green':   ['#a9dc76',   '107',  'Green'],
          \ 'diff_green': ['#384034',   '22',   'DarkGreen'],
          \ 'bg_blue':    ['#77d5f0',   '110',  'Blue'],
          \ 'diff_blue':  ['#323e47',   '17',   'DarkBlue'],
          \ 'fg':         ['#e1e3e4',   '250',  'White'],
          \ 'red':        ['#fb617e',   '203',  'Red'],
          \ 'orange':     ['#f89860',   '215',  'Orange'],
          \ 'yellow':     ['#edc763',   '179',  'Yellow'],
          \ 'green':      ['#9ed06c',   '107',  'Green'],
          \ 'blue':       ['#6dcae8',   '110',  'Blue'],
          \ 'purple':     ['#bb97ee',   '176',  'Magenta'],
          \ 'grey':       ['#7e8294',   '246',  'LightGrey'],
          \ 'none':       ['NONE',      'NONE', 'NONE']
          \ }
  elseif a:style ==# 'atlantis'
    let palette = {
          \ 'black':      ['#181a1c',   '237',  'DarkGrey'],
          \ 'bg0':        ['#2a2f38',   '235',  'Black'],
          \ 'bg1':        ['#303541',   '236',  'DarkGrey'],
          \ 'bg2':        ['#373c4b',   '236',  'DarkGrey'],
          \ 'bg3':        ['#3d4455',   '237',  'DarkGrey'],
          \ 'bg4':        ['#424b5b',   '237',  'Grey'],
          \ 'bg_red':     ['#ff6d7e',   '203',  'Red'],
          \ 'diff_red':   ['#473536',   '52',   'DarkRed'],
          \ 'bg_green':   ['#a5e179',   '107',  'Green'],
          \ 'diff_green': ['#384034',   '22',   'DarkGreen'],
          \ 'bg_blue':    ['#7ad5f1',   '110',  'Blue'],
          \ 'diff_blue':  ['#323e47',   '17',   'DarkBlue'],
          \ 'fg':         ['#e1e3e4',   '250',  'White'],
          \ 'red':        ['#ff6578',   '203',  'Red'],
          \ 'orange':     ['#f69c5e',   '215',  'Orange'],
          \ 'yellow':     ['#eacb64',   '179',  'Yellow'],
          \ 'green':      ['#9dd274',   '107',  'Green'],
          \ 'blue':       ['#72cce8',   '110',  'Blue'],
          \ 'purple':     ['#ba9cf3',   '176',  'Magenta'],
          \ 'grey':       ['#828a9a',   '246',  'LightGrey'],
          \ 'none':       ['NONE',      'NONE', 'NONE']
          \ }
  elseif a:style ==# 'maia'
    let palette = {
          \ 'black':      ['#1c1e1f',   '237',  'DarkGrey'],
          \ 'bg0':        ['#273136',   '235',  'Black'],
          \ 'bg1':        ['#2e383e',   '236',  'DarkGrey'],
          \ 'bg2':        ['#353f46',   '236',  'DarkGrey'],
          \ 'bg3':        ['#3a444b',   '237',  'DarkGrey'],
          \ 'bg4':        ['#414b53',   '237',  'Grey'],
          \ 'bg_red':     ['#ff6d7e',   '203',  'Red'],
          \ 'diff_red':   ['#37292e',   '52',   'DarkRed'],
          \ 'bg_green':   ['#a2e57b',   '107',  'Green'],
          \ 'diff_green': ['#1f412e',   '22',   'DarkGreen'],
          \ 'bg_blue':    ['#7cd5f1',   '110',  'Blue'],
          \ 'diff_blue':  ['#1f2946',   '17',   'DarkBlue'],
          \ 'fg':         ['#e1e2e3',   '250',  'White'],
          \ 'red':        ['#f76c7c',   '203',  'Red'],
          \ 'orange':     ['#f3a96a',   '215',  'Orange'],
          \ 'yellow':     ['#e3d367',   '179',  'Yellow'],
          \ 'green':      ['#9cd57b',   '107',  'Green'],
          \ 'blue':       ['#78cee9',   '110',  'Blue'],
          \ 'purple':     ['#baa0f8',   '176',  'Magenta'],
          \ 'grey':       ['#82878b',   '246',  'LightGrey'],
          \ 'none':       ['NONE',      'NONE', 'NONE']
          \ }
  endif
  return palette
endfunction "}}}
function! sonokai#highlight(group, fg, bg, ...) "{{{
  execute 'highlight' a:group
        \ 'guifg=' . a:fg[0]
        \ 'guibg=' . a:bg[0]
        \ 'ctermfg=' . a:fg[1]
        \ 'ctermbg=' . a:bg[1]
        \ 'gui=' . (a:0 >= 1 ?
          \ (a:1 ==# 'undercurl' ?
            \ (executable('tmux') && $TMUX !=# '' ?
              \ 'underline' :
              \ 'undercurl') :
            \ a:1) :
          \ 'NONE')
        \ 'cterm=' . (a:0 >= 1 ?
          \ (a:1 ==# 'undercurl' ?
            \ 'underline' :
            \ a:1) :
          \ 'NONE')
        \ 'guisp=' . (a:0 >= 2 ?
          \ a:2[0] :
          \ 'NONE')
endfunction "}}}
function! sonokai#ft_gen(path, last_modified, msg) "{{{
  " Generate the `after/ftplugin` directory.
  let full_content = join(readfile(a:path), "\n") " Get the content of `colors/sonokai.vim`
  let ft_content = []
  let rootpath = sonokai#ft_rootpath(a:path) " Get the path to place the `after/ftplugin` directory.
  call substitute(full_content, '" ft_begin.\{-}ft_end', '\=add(ft_content, submatch(0))', 'g') " Search for 'ft_begin.\{-}ft_end' (non-greedy) and put all the search results into a list.
  for content in ft_content
    let ft_list = []
    call substitute(matchstr(matchstr(content, 'ft_begin:.\{-}{{{'), ':.\{-}{{{'), '\(\w\|-\)\+', '\=add(ft_list, submatch(0))', 'g') " Get the file types. }}}}}}
    for ft in ft_list
      call sonokai#ft_write(rootpath, ft, content) " Write the content.
    endfor
  endfor
  call sonokai#ft_write(rootpath, 'text', "let g:sonokai_last_modified = '" . a:last_modified . "'") " Write the last modified time to `after/ftplugin/text/sonokai.vim`
  if a:msg ==# 'update'
    echohl WarningMsg | echom '[sonokai] Updated ' . rootpath . '/after/ftplugin' | echohl None
  else
    echohl WarningMsg | echom '[sonokai] Generated ' . rootpath . '/after/ftplugin' | echohl None
  endif
endfunction "}}}
function! sonokai#ft_write(rootpath, ft, content) "{{{
  " Write the content.
  let ft_path = a:rootpath . '/after/ftplugin/' . a:ft . '/sonokai.vim' " The path of a ftplugin file.
  " create a new file if it doesn't exist
  if !filereadable(ft_path)
    call mkdir(a:rootpath . '/after/ftplugin/' . a:ft, 'p')
    call writefile([
          \ "if !exists('g:colors_name') || g:colors_name !=# 'sonokai'",
          \ '    finish',
          \ 'endif'
          \ ], ft_path, 'a') " Abort if the current color scheme is not sonokai.
    call writefile([
          \ "if index(g:sonokai_loaded_file_types, '" . a:ft . "') ==# -1",
          \ "    call add(g:sonokai_loaded_file_types, '" . a:ft . "')",
          \ 'else',
          \ '    finish',
          \ 'endif'
          \ ], ft_path, 'a') " Abort if this file type has already been loaded.
  endif
  " If there is something like `call sonokai#highlight()`, then add
  " code to initialize the palette and configuration.
  if matchstr(a:content, 'sonokai#highlight') !=# ''
    call writefile(['let s:configuration = sonokai#get_configuration()', 'let s:palette = sonokai#get_palette(s:configuration.style)'], ft_path, 'a')
  endif
  " Append the content.
  call writefile(split(a:content, "\n"), ft_path, 'a')
endfunction "}}}
function! sonokai#ft_rootpath(path) "{{{
  " Get the directory where `after/ftplugin` is generated.
  if (matchstr(a:path, '^/usr/share') ==# '') || has('win32') " Return the plugin directory. The `after/ftplugin` directory should never be generated in `/usr/share`, even if you are a root user.
    return substitute(a:path, '/colors/sonokai\.vim$', '', '')
  else " Use vim home directory.
    if has('nvim')
      return stdpath('config')
    else
      if has('win32') || has ('win64')
        return $VIM . '/vimfiles'
      else
        return $HOME . '/.vim'
      endif
    endif
  endif
endfunction "}}}
function! sonokai#ft_newest(path, last_modified) "{{{
  " Determine whether the current ftplugin files are up to date by comparing the last modified time in `colors/sonokai.vim` and `after/ftplugin/text/sonokai.vim`.
  let rootpath = sonokai#ft_rootpath(a:path)
  execute 'source ' . rootpath . '/after/ftplugin/text/sonokai.vim'
  return a:last_modified ==# g:sonokai_last_modified ? 1 : 0
endfunction "}}}
function! sonokai#ft_clean(path, msg) "{{{
  " Clean the `after/ftplugin` directory.
  let rootpath = sonokai#ft_rootpath(a:path)
  " Remove `after/ftplugin/**/sonokai.vim`.
  let file_list = split(globpath(rootpath, 'after/ftplugin/**/sonokai.vim'), "\n")
  for file in file_list
    call delete(file)
  endfor
  " Remove empty directories.
  let dir_list = split(globpath(rootpath, 'after/ftplugin/*'), "\n")
  for dir in dir_list
    if globpath(dir, '*') ==# ''
      call delete(dir, 'd')
    endif
  endfor
  if globpath(rootpath . '/after/ftplugin', '*') ==# ''
    call delete(rootpath . '/after/ftplugin', 'd')
  endif
  if globpath(rootpath . '/after', '*') ==# ''
    call delete(rootpath . '/after', 'd')
  endif
  if a:msg
    echohl WarningMsg | echom '[sonokai] Cleaned ' . rootpath . '/after/ftplugin' | echohl None
  endif
endfunction "}}}
function! sonokai#ft_exists(path) "{{{
  return filereadable(sonokai#ft_rootpath(a:path) . '/after/ftplugin/text/sonokai.vim')
endfunction "}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
