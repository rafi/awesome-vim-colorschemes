let s:save_cpo = &cpo
set cpo&vim


function! s:attr(name, what, mode, default) abort
  let attr = synIDattr(synIDtrans(hlID(a:name)), a:what, a:mode)
  return !empty(attr) ? attr : a:default
endfunction


function! s:col(name) abort
  return [
        \   s:attr(a:name, 'fg', 'gui', 'Black'),
        \   s:attr(a:name, 'bg', 'gui', 'Red'),
        \   s:attr(a:name, 'fg', 'cterm', 0),
        \   s:attr(a:name, 'bg', 'cterm', 9),
        \ ]
endfunction


function! s:build_palette() abort
  let col_base     = s:col('icebergLLBase')
  let col_edge     = s:col('icebergLLEdge')
  let col_error    = s:col('icebergLLError')
  let col_gradient = s:col('icebergLLGradient')
  let col_nc       = s:col('icebergLLNC')
  let col_warning  = s:col('icebergLLWarning')

  let p = {}
  let p.inactive = airline#themes#generate_color_map(
        \ col_nc,
        \ col_nc,
        \ col_nc)
  let p.normal = airline#themes#generate_color_map(
        \ col_edge,
        \ col_gradient,
        \ col_base)
  let p.insert = airline#themes#generate_color_map(
        \ s:col('icebergLLInsert'),
        \ col_gradient,
        \ col_base)
  let p.replace = airline#themes#generate_color_map(
        \ s:col('icebergLLReplace'),
        \ col_gradient,
        \ col_base)
  let p.visual = airline#themes#generate_color_map(
        \ s:col('icebergLLVisual'),
        \ col_gradient,
        \ col_base)

  " Accents
  let p.accents = {
        \   'red': s:col('icebergALAccentRed'),
        \ }

  " Error
  let p.inactive.airline_error = col_error
  let p.insert.airline_error = col_error
  let p.normal.airline_error = col_error
  let p.replace.airline_error = col_error
  let p.visual.airline_error = col_error

  " Warning
  let p.inactive.airline_warning = col_warning
  let p.insert.airline_warning = col_warning
  let p.normal.airline_warning = col_warning
  let p.replace.airline_warning = col_warning
  let p.visual.airline_warning = col_warning

  return p
endfunction


function! airline#themes#iceberg#refresh()
  " Iceberg should be applied ahead
  " because this palette uses colors declared by Iceberg
  if g:colors_name !=# 'iceberg'
    let message = 'iceberg.vim: Execute `:colorscheme iceberg` before loading airline colorscheme'

    " Call both echomsg and echoerr
    " because airline doesn't show thrown error message
    echomsg message
    echoerr message
  endif

  let g:airline#themes#iceberg#palette = s:build_palette()
endfunction

call airline#themes#iceberg#refresh()


let &cpo = s:save_cpo
unlet s:save_cpo
