#!/usr/bin/env bash
set -eu
shopt -s nocaseglob
WORKDIR=""

function download() {
	local url header
	case "$1" in
		codeberg:*)
			url="https://codeberg.org/${1#*:}/archive/master.tar.gz"
			header="Authorization: token ${CODEBERG_TOKEN}"
			;;
		*)
			url="https://api.github.com/repos/$1/tarball"
			header="Authorization: token ${GITHUB_API_TOKEN:-$HOMEBREW_GITHUB_API_TOKEN}"
			;;
	esac
	curl -Ls "$url" -H "$header"
}

function _dl() {
	local repo="${1#*:}"
	local subdir=${2:-}
	[ -z "$subdir" ] || subdir="$subdir/"
	echo -e ":: Downloading $repo…"

	WORKDIR="$(mktemp -d -t awesome-vim-colorschemes)"
	download "$1" | tar xz --strip=1 -C "$WORKDIR"/
	rsync -avhq "$WORKDIR/$subdir" \
		--include='autoload/***' --include='colors/***' --exclude='*' .

	for filepath in "$WORKDIR/$subdir"README*; do
		local filename="$(basename "$filepath")"
		local ext=""
		if [[ "$filename" == *.* ]]; then
			ext=".${filepath##*.}"
		fi
		mv "$filepath" docs/"${repo//\//-}${ext}"
	done
	[ "${DEBUG:-}" = 1 ] || rm -rf "$WORKDIR"
}

function _main() {
	rm -rf autoload colors docs
	mkdir -p autoload colors docs

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
	_dl codeberg:lifepillar/vim-solarized8
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

	find autoload colors -type f -exec chmod -x {} \;
	git add -- colors docs autoload
	git commit -m "chore: update"

	echo -e '\nCompleted successfuly.'

}
_main
