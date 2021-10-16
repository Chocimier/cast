CAST(1)			    General Commands Manual		       CAST(1)

NAME
     cast – update system using customized packages

SYNOPSIS
     cast install PACKAGE...
     cast

DESCRIPTION
     The first synopsis form builds packages from source, force installs, and
     repolocks them.

     The second synopsis form synchronizes source and remote binary
     repositories, builds packages installed previously with first form, and
     updates system using local and remote repositories.

BEFORE FIRST USE
     Source repository is not initialized implicitly on purpose. It needs to
     be manually created for dedicated unprivileged user, then configured as
     wanted. Source repository is searched for with xdistdir, one of path it
     tries /var/lib/cast/void-packages.

PRIVILEGES
     cast has to be run as privileged process. It does not escalate privileges
     for itself.

     Packages are build as separate unprivileged user.

MODIFICATIONS
     cast is composed of small parts executing one another.  Some of these
     parts are provided with alternative implementation.  Parts are not
     limited to builtin implementations. Any shell script adhering to
     documented interface can be used.

     Parts are numbered to visualise order of execution. This is not plug-in
     system - to be run, part must be executed by other part. Entry point is
     /usr/bin/cast.

CONFIGURATION FILES
     /etc/cast.rc
	     Configuration file sourced by unprivileged parts.
     /etc/cast/*
	     Symbolic links selecting implementation of parts.
     /etc/xbps.d/30-repository-cast.conf
	     XBPS configuration file enabling local binary repository.

OTHER TOOLS
     xbps-mini-builder
	     builds chosen unmodified packages

Void Linux			August 9, 2021			    Void Linux
