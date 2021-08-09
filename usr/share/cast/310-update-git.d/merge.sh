#!/bin/sh
. ../cast.rc &&
cd "$(xdistdir)" &&
git fetch "${remote}" &&
git checkout "${branch_local}" &&
git merge "${remote}/${branch_remote}"
