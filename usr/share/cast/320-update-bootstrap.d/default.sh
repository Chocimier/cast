#!/bin/sh
cd "$(xdistdir)" &&
if [ -d masterdir ]; then
	./xbps-src bootstrap-update
else
	./xbps-src binary-bootstrap
fi
