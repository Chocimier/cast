#!/bin/sh
. ../cast.rc &&
cd "$(xdistdir)" &&
xargs ./xbps-src sort-dependencies |
while read -r p; do
	./xbps-src $xbps_src_args pkg "$p" || exit
done
