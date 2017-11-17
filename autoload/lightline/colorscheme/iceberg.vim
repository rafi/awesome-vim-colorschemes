let s:save_cpo = &cpo
set cpo&vim


function! s:attr(name, what, mode, default) abort
  let attr = synIDattr(synIDtrans(hlID(a:name)), a:what, a:mode)
  return !empty(attr) ? attr : a:default
endfunction


function! s:col(name) abort
  return [
        \ s:attr(a:name, 'fg', 'gui', 'Black'),
        \ s:attr(a:name, 'bg', 'gui', 'Red'),
        \ s:attr(a:name, 'fg', 'cterm', 0),
        \ s:attr(a:name, 'bg', 'cterm', 9)]
endfunction


function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  let col_base     = s:col('icebergLLBase')
  let col_edge     = s:col('icebergLLEdge')
  let col_gradient = s:col('icebergLLGradient')
  let col_nc       = s:col('icebergLLNC')
  let col_tabfill  = s:col('icebergLLTabFill')

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ s:col('icebergLLNormal'),
        \ col_gradient]
  let p.normal.right = [
        \ col_edge,
        \ col_gradient]
  let p.normal.error = [
        \ s:col('icebergLLError')]
  let p.normal.warning = [
        \ s:col('icebergLLWarning')]

  let p.insert.left = [
        \ s:col('icebergLLInsert'),
        \ col_gradient]
  let p.replace.left = [
        \ s:col('icebergLLReplace'),
        \ col_gradient]
  let p.visual.left = [
        \ s:col('icebergLLVisual'),
        \ col_gradient]

  let p.inactive.middle = [
        \ col_nc]
  let p.inactive.left = [
        \ col_nc,
        \ col_nc]
  let p.inactive.right = [
        \ col_nc,
        \ col_nc]

  let p.tabline.middle = [
        \ col_tabfill]
  let p.tabline.left = [
        \ col_tabfill]
  let p.tabline.tabsel = [
        \ s:col('icebergLLTabSel')]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction


" Iceberg should be applied ahead
" because this palette uses colors declared by Iceberg
if g:colors_name !=# 'iceberg'
  let message = 'iceberg.vim: Execute `:colorscheme iceberg` before loading lightline colorscheme'

  " Call both echomsg and echoerr
  " because lightline doesn't show thrown error message
  echomsg message
  echoerr message
endif
let g:lightline#colorscheme#iceberg#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
