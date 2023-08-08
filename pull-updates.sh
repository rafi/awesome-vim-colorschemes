#!/usr/bin/env bash
set -eu
shopt -s nocaseglob

function _dl() {
	local tmp="tmp" docs="docs" rtp=${2:-}

	[ -d "$tmp" ] || mkdir "$tmp"
	[ -d "$docs" ] || mkdir "$docs"

	curl -L "https://api.github.com/repos/$1/tarball" \
		-H "Authorization: token $HOMEBREW_GITHUB_API_TOKEN" \
		| tar xz --strip=1 -C "$tmp"/

	rsync -avh "$tmp"/"$rtp" --include='after/***' \
		--include='autoload/***' --include='colors/***' \
		--include='plugin/***' --exclude='*' .

	cp -r "$tmp"/"$rtp"/README* "$docs"/"${1//\//-}".md
	rm -rf "$tmp"
}

function _main() {
	_dl nightsense/snow
	_dl ajmwagar/vim-deus
	_dl AlessandroYorba/Alduin
	_dl AlessandroYorba/Sierra
	_dl andreasvc/vim-256noir
	_dl arcticicestudio/nord-vim
	_dl ayu-theme/ayu-vim
	_dl Badacadabra/vim-archery
	_dl challenger-deep-theme/vim
	_dl chase/focuspoint-vim
	_dl christophermca/meta5
	_dl TheNiteCoder/mountaineer.vim
	_dl cocopon/iceberg.vim
	_dl cseelus/vim-colors-lucid
	_dl danilo-augusto/vim-afterglow
	_dl dikiaap/minimalist
	_dl endel/vim-github-colorscheme
	_dl fcpg/vim-orbital
	_dl fmoralesc/molokayo
	_dl gilgigilgil/anderson.vim
	_dl gregsexton/Atom
	_dl hardcoreplayers/oceanic-material
	_dl jacoborus/tender.vim
	_dl jaredgorski/fogbell.vim
	_dl jaredgorski/SpaceCamp
	_dl jdsimcoe/abstract.vim
	_dl jonathanfilip/vim-lucius
	_dl joshdick/onedark.vim
	_dl junegunn/seoul256.vim
	_dl keith/parsec.vim
	_dl kristijanhusak/vim-hybrid-material
	_dl kyoz/purify vim/
	_dl lifepillar/vim-solarized8
	_dl liuchengxu/space-vim-dark
	_dl marcopaganini/termschool-vim-theme
	_dl mhartington/oceanic-next
	_dl mkarmona/materialbox
	_dl morhetz/gruvbox
	_dl NLKNguyen/papercolor-theme
	_dl nanotech/jellybeans.vim
	_dl nightsense/carbonized
	_dl nightsense/stellarized
	_dl nikolvs/vim-sunbather
	_dl owickstrom/vim-colors-paramount
	_dl rakr/vim-one
	_dl rakr/vim-two-firewatch
	_dl romainl/Apprentice
	_dl romainl/flattened
	_dl sainnhe/sonokai
	_dl scheakur/vim-scheakur
	_dl sonph/onehalf vim/
	_dl sts10/vim-pink-moon
	_dl tomasr/molokai
	_dl tyrannicaltoucan/vim-deep-space
	_dl vim-scripts/pyte
	_dl vim-scripts/rdark-terminal2.vim
	_dl vim-scripts/twilight256.vim
	_dl vim-scripts/wombat256.vim
	_dl w0ng/vim-hybrid
	_dl wadackel/vim-dogrun
	_dl whatyouhide/vim-gotham
	_dl wimstefan/Lightning
	_dl yorickpeterse/happy_hacking.vim
	_dl zacanger/angr.vim

	chmod -x colors/*vim
}
_main
