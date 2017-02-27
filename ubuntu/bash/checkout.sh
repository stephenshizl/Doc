echo $0 : $1 : $2

lsdir=$(command ls   -p   |   grep   /)
echo $lsdir

for dir in $lsdir;do
echo $dir
cd $dir
pwd

svn1=https://192.168.0.10:8443/svn/platinumplatform/branches/$dir$1
echo $svn1
svn co $svn1 $2

cd ..
done

chmod 777 -R .
