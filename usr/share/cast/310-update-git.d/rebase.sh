#!/bin/sh
. ../cast.rc &&
cd "$(xdistdir)" &&
git fetch "${remote}" &&
git rebase "${remote}/${branch_remote}" "${branch_local}"
