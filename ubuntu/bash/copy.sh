echo $0 : $1 : $2

if [ -z "$1" ];then
echo error 1
exit 0
fi

if [ -z "$2" ];then
echo error 2
exit 0
fi

cd $1

lsdir=$(command ls   -p   |   grep   /)
echo $lsdir

for dir in $lsdir;do
echo $dir
echo ../$2

cp -R ../$2  $dir

done