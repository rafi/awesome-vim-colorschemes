if exists('g:lightline')
	let s:p = {
		\'normal':{},
		\'inactive':{},
		\'insert':{},
		\'replace':{},
		\'visual':{},
		\'tabline':{}
	\}

	let s:base00  = ['#657b83', '240']
	let s:base01  = ['#586e75', '239']
	let s:base02  = ['#073642', '235']
	let s:base03  = ['#002b36', '234']
	let s:base0   = ['#839496', '244']
	let s:base1   = ['#93a1a1', '245']
	let s:base2   = ['#eee8d5', '187']
	let s:base3   = ['#fdf6e3', '230']
	let s:red     = ['#dc322f', '124']
	let s:green   = ['#859900',  '64']
	let s:blue    = ['#268bd2',  '33']
	let s:cyan    = ['#2aa198',  '37']
	let s:magenta = ['#d33682', '125']
	let s:yellow  = ['#b58900', '136']
	let s:orange  = ['#cb4b16', '166']
	let s:violet  = ['#6c71c4',  '61']

	let s:p.normal.left     = [[s:base03, s:blue   ], [s:base03, s:base00]]
	let s:p.normal.right    = [[s:base03, s:base1  ], [s:base03, s:base00]]
	let s:p.normal.middle   = [[s:base1 , s:base02 ]]
	let s:p.inactive.left   = [[s:base0 , s:base02 ], [s:base0, s:base02 ]]
	let s:p.inactive.right  = [[s:base03, s:base00 ], [s:base0, s:base02 ]]
	let s:p.inactive.middle = [[s:base01, s:base02 ]]
	let s:p.insert.left     = [[s:base03, s:green  ], [s:base03, s:base00]]
	let s:p.replace.left    = [[s:base03, s:red    ], [s:base03, s:base00]]
	let s:p.visual.left     = [[s:base03, s:magenta], [s:base03, s:base00]]
	let s:p.tabline.left    = [[ s:base03, s:base00]]
	let s:p.tabline.right   = copy(s:p.normal.right)
	let s:p.tabline.middle  = [[ s:base0 , s:base02]]
	let s:p.tabline.tabsel  = [[ s:base03, s:base1 ]]
	let s:p.normal.error    = [[ s:base03, s:red   ]]
	let s:p.normal.warning  = [[ s:base03, s:yellow]]

	
	let g:lightline#colorscheme#flattened_dark#palette = lightline#colorscheme#flatten(s:p)
endif
