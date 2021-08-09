#!/bin/sh
./120-run-unprivileged "${PWD}/300-build-selected" "$@" &&
xbps-install -f "$@" &&
xbps-pkgdb -m repolock "$@"
