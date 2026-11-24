" Normal mode
let s:N1 = ['#875faf', 97]
let s:N2 = ['#4e4e4e', 239]
let s:N3 = ['#3a3a3a', 237]

" Insert mode
let s:I1 = ['#009966', 35]
let s:I2 = ['#4e4e4e', 239]
let s:I3 = ['#c6c6c6', 251]
let s:I4 = ['#3a3a3a', 237]

" Visual mode
let s:V1 = ['#5f0000', 52]
let s:V2 = ['#ff5faf', 205]

" Replace mode
let s:RE1 = ['#c6c6c6', 251]
let s:RE2 = ['#ce537a', 168]

" Create a Lightline color palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}}

" Define colors for Normal mode
let s:p.normal.left = [[s:N1, s:N2], [s:N2, s:N3]]
let s:p.normal.right = copy(s:p.normal.left)
let s:p.normal.middle = [[s:N3, s:N3]]
let s:p.normal.error = [[s:RE2, s:RE1]]
let s:p.normal.warning = [[s:I4, s:I3]]

" Define colors for Insert mode
let s:p.insert.left = [[s:I1, s:I2], [s:I2, s:I4]]
let s:p.insert.right = copy(s:p.insert.left)
let s:p.insert.middle = [[s:I4, s:I4]]

" Define colors for Visual mode
let s:p.visual.left = [[s:V1, s:V2], [s:V2, s:N3]]
let s:p.visual.right = copy(s:p.visual.left)
let s:p.visual.middle = [[s:N3, s:N3]]

" Define colors for Replace mode
let s:p.replace.left = [[s:RE2, s:RE1], [s:RE1, s:N3]]
let s:p.replace.right = copy(s:p.replace.left)
let s:p.replace.middle = [[s:N3, s:N3]]

" Inactive mode uses Normal mode colors
let s:p.inactive = copy(s:p.normal)
let s:p.inactive.left = [[s:N1, s:N3], [s:N3, s:N3]]
let s:p.inactive.right = copy(s:p.inactive.left)
let s:p.inactive.middle = [[s:N3, s:N3]]

" Flatten the color definitions
let g:lightline#colorscheme#violet#palette = lightline#colorscheme#flatten(s:p)
