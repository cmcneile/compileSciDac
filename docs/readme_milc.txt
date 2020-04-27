The SciDac libraries are in the Makefile used for applications:

For example:

#----------------------------------------------------------------------
# 11. SciDAC package options

# Edit these "wants"

WANTQOP ?= # true # or blank. Implies HAVEQDP, HAVEQOP, HAVEQMP.

WANTQIO ?= # true # or blank.  Implies HAVEQMP.

WANTQMP ?= # true or blank.

# QMP_MPI or QMP_SPI
QMP_BACKEND = QMP_MPI

# Edit these locations for the installed SciDAC packages
# It is assumed that these are the parents of "include" and "lib"

SCIDAC = ${HOME}/scidac/install
TAG=
# Parallel versions
QMPPAR =
/Users/cmcneile/code/milc/git_sept_2016/deflate/scidac/install/qmp
QIOPAR =
/Users/cmcneile/code/milc/git_sept_2016/deflate/scidac/install/qio
# Single processor versions
QMPSNG =
/Users/cmcneile/code/milc/git_sept_2016/deflate/scidac/install/qmp
QIOSNG =
/Users/cmcneile/code/milc/git_sept_2016/deflate/scidac/install/qio


QLA ?= ${SCIDAC}/qla${TAG}
# Either version
QDP ?= ${SCIDAC}/qdp${TAG}
QOPQDP ?= ${SCIDAC}/qopqdp${TAG}

QOP = ${QOPQDP}
