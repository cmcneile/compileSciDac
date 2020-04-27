#!/bin/bash

INSTALL=`pwd`/install


QMP_I=$INSTALL/qmp
QIO_I=$INSTALL/qio
QLA_I=$INSTALL/qla
QDP_I=$INSTALL/qdp
QL3_I=$INSTALL/ql3


CXX=g++
CC=gcc

# QMP
qmp_compile ()
{
cd qmp
./configure CXX=${CXX} CC=${CC} CFLAGS="-O3" --prefix=$QMP_I 
make 
make install
cd ..
}



# QIO
qio_compile ()
{
cd qio
./configure CXX=${CXX} CC=${CC} --prefix=$QIO_I CFLAGS="-O3" --with-qmp=$QMP_I --disable-qmp-route
make
make install
cd ..
}

# QLA
qla_compile ()
{
cd  qla
 ./configure  CXX=${CXX} CC=${CC} --prefix=$QLA_I --enable-nc=3 CFLAGS="-O2 " 
make
make install
cd ..
}


qdp_compile ()
{
cd qdp
./configure CXX=${CXX} CC=${CC} --prefix=$QDP_I --with-qmp=$QMP_I --enable-nc=3  --with-qla=$QLA_I --with-qio=$QIO_I CFLAGS="-O2 "
make
make install
cd ..
}


ql3_compile ()
{
cd qopqdp
./configure CXX=${CXX} CC=${CC} --prefix=$QL3_I --with-qdp=$QDP_I  --with-qmp=$QMP_I --enable-nc=3  --with-qla=$QLA_I --with-qio=$QIO_I CFLAGS="-O2 "
make
make install
cd ..
}

# start the compilation

##qmp_compile
qio_compile 
##qla_compile
##qdp_compile 
##ql3_compile



exit 0

