#!/bin/sh
cd "$(xdistdir)" &&
while read -r p; do
	template="srcpkgs/$p/template"
	[ -f "$template" ] || continue
	srcpkgver="$p-$(grep -e '^version=' -e '^revision=' "$template" | cut -d= -f2 | tr -d \'\" |
		{ read -r version; read -r revision; echo "${version}_${revision}"; })"
	binpkgver="$(xbps-query -p pkgver "$p")"
	if [ "$srcpkgver" != "$binpkgver" ]; then
		readlink "srcpkgs/$p" || echo "$p"
	fi
done
