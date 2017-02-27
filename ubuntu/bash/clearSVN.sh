#!/bin/bash

recdir()
{
    tab=$tab$singletab

	  for file in "$@"; do	    
	    dir=$dir/$file
	    if [ -d $dir ]; then
	    echo -e $dir
	    echo -e $dir/.svn
	    rm -R $dir/.svn
	      recdir $(command ls $dir)
	    fi
	    dir=${dir%/*}
	  done
	  tab=${tab%\\t}
}

recls()
{
    singletab="\t"
    for tryfile in "$@"; do
    echo $tryfile
    if [ -d $tryfile ]; then
      dir=$tryfile
      recdir $(command ls $tryfile)
    fi
    done
    unset dir singletab tab
}

echo -e $1
echo -e $1/.svn
rm -R $1/.svn

recls $1