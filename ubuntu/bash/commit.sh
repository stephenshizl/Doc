#!/bin/bash

echo $0 : $1

lsdir=$(command ls   -p   |   grep   /)
echo $lsdir

for dir in $lsdir;do
echo $dir$1
cd $dir$1
pwd

echo svn ci . -F ../../log.txt
     svn ci . -F ../../log.txt
     sleep  1

cd ../..
done

chmod 777 -R .