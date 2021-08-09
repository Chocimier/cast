#!/bin/sh
cd "$(dirname "$0")" &&
./310-update-git &&
./320-update-bootstrap &&
while [ "$*" ]; do
	echo "$1"
	shift
done |
	./360-build-pkgs &&
{ ./380-clean-hostdir || true; }
