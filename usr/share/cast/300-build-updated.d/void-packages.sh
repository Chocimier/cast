#!/bin/sh
cd "$(dirname "$0")" &&
./310-update-git &&
./320-update-bootstrap &&
./340-list-custom |
	./350-find-updates |
	./360-build-pkgs &&
{ ./380-clean-hostdir || true; }
