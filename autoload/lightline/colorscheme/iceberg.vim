let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  if &background == 'light'
    let col_base     = ['#8b98b6', '#cad0de', 244, 251]
    let col_edge     = ['#e8e9ec', '#757ca3', 252, 243]
    let col_gradient = ['#e8e9ec', '#9fa6c0', 252, 247]
    let col_nc       = ['#8b98b6', '#cad0de', 244, 251]
    let col_tabfill  = ['#8b98b6', '#cad0de', 244, 251]
    let col_normal   = ['#e8e9ec', '#757ca3', 252, 243]
    let col_error    = ['#e8e9ec', '#cc517a', 254, 125]
    let col_warning  = ['#e8e9ec', '#c57339', 254, 130]
    let col_insert   = ['#e8e9ec', '#2d539e', 254, 25]
    let col_replace  = ['#e8e9ec', '#c57339', 254, 130]
    let col_visual   = ['#e8e9ec', '#668e3d', 254, 64]
    let col_tabsel   = ['#e8e9ec', '#757ca3', 252, 243]
  else
    let col_base     = ['#3e445e', '#0f1117', 238, 233]
    let col_edge     = ['#17171b', '#818596', 234, 245]
    let col_gradient = ['#6b7089', '#2e313f', 242, 236]
    let col_nc       = ['#3e445e', '#0f1117', 238, 233]
    let col_tabfill  = ['#3e445e', '#0f1117', 238, 233]
    let col_normal   = ['#17171b', '#818596', 234, 245]
    let col_error    = ['#161821', '#e27878', 234, 203]
    let col_warning  = ['#161821', '#e2a478', 234, 216]
    let col_insert   = ['#161821', '#84a0c6', 234, 110]
    let col_replace  = ['#161821', '#e2a478', 234, 216]
    let col_visual   = ['#161821', '#b4be82', 234, 150]
    let col_tabsel   = ['#17171b', '#818596', 234, 245]
  endif

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ col_normal,
        \ col_gradient]
  let p.normal.right = [
        \ col_edge,
        \ col_gradient]
  let p.normal.error = [
        \ col_error]
  let p.normal.warning = [
        \ col_warning]

  let p.insert.left = [
        \ col_insert,
        \ col_gradient]
  let p.replace.left = [
        \ col_replace,
        \ col_gradient]
  let p.visual.left = [
        \ col_visual,
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
        \ col_tabsel]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction


let g:lightline#colorscheme#iceberg#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
