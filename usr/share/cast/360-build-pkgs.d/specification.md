# Outcome

Builds packages.

Reads package list from stdin, one per line, and build them
in repository found with xdistdir.

# Environment

Called with directory containing selected parts as current working directory.
May load ../cast.rc config file.
Uses xdistdir to find location of void-packages repository.
Takes no arguments.
