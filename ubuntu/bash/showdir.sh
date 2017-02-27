#!/bin/bash

recdir()
{
    tab=$tab$singletab

	  for file in "$@"; do	    
	    dir=$dir/$file
	    if [ -d $dir ]; then
	    echo -e $tab$file
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

recls $1