#!/bin/sh
. ../cast.rc || exit
cd "$(xdistdir)" || exit
for subrepo in "" /debug /nonfree; do
	repo="${PWD}/hostdir/binpkgs/${branch_local}/${subrepo}"
	if [ -d "${repo}" ]; then
		xbps-rindex -r "${repo}"
	fi
done
./xbps-src clean-repocache
