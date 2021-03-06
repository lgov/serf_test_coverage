#!/bin/sh
set -e

SERFSRC=../serftrunk

scons -c -Y $SERFSRC
rm .saved_config

# build with code coverage instrumentation
scons -Y $SERFSRC CC=clang CFLAGS=--coverage LINKFLAGS=--coverage APR=/opt/local APU=/opt/local OPENSSL=/opt/local DEBUG=1 GSSAPI=/opt/local

# build with code coverage instrumentation
mkdir -p build
cp $SERFSRC/build/check.py build/
mkdir -p test/certs/
cp $SERFSRC/test/certs/*.pem test/certs/
cp $SERFSRC/test/certs/*.p12 test/certs/
mkdir -p test/testcases
cp $SERFSRC/test/testcases/* test/testcases/

# now run the test suite to measure test coverage
scons -Y $SERFSRC check
