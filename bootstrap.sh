#!/bin/sh 
base=$(cd "$(dirname "$0")"; pwd)
cd $base
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig ./configure --with-mysql=/usr --prefix=/usr/local/mysql-proxy CFLAGS="-O2" LDFLAGS="-lm -ldl -lcrypto -ljemalloc"
