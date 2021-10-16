# Outcome

Lists packages to build.

Reads package list from stdin, one per line, and for packages that need
to be rebuild, prints names to stdout.

# Environment

Called with directory containing selected parts as current working directory.
May load ../cast.rc config file.
Uses xdistdir to find location of void-packages repository.
Takes no arguments.
