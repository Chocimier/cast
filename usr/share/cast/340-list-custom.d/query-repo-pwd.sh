#!/bin/sh
xbps-query -p repository -s "$(xdistdir)" | cut -d: -f1 | while read -r p; do
	xbps-uhelper getpkgname "$p"
done
