#!/bin/sh
xbps-install -S &&
./120-run-unprivileged "${PWD}/300-build-updated" &&
yes n | xbps-install -u | less &&
xbps-install -u
