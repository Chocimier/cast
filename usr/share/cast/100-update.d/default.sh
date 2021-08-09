#!/bin/sh
xbps-install -S &&
./120-run-unprivileged "${PWD}/300-build-updated" &&
xbps-install -u
