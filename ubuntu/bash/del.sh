lsdir=$(command ls   -p   |   grep   /)
echo $lsdir

for dir in $lsdir;do
echo $dir
cd $dir
pwd

rm -R *

cd ..
done
