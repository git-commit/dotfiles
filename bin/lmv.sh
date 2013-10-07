#!/bin/bash

moveAndLinkFile(){
    read -s -n 1 -p "Moving $1 to $2 and leaving a symlink behind. Are you sure? y/n" cont
    if [[ -n $cont ]]; then
        echo ""
    fi
    if [[ $cont =~ ^[Yy]$ ]]; then
        src=$1
        src_filename=$(basename $1)
        dest=$2
        dest_filePath=$dest$(basename $1)

        mv $src $dest && ln -s $dest_filePath $src
    fi
}

moveAndLinkDirectory(){
    printf "NYI\n"
}

printUsage(){
    printf "Usage: lmv [file] [target directory]\n"
}

if [[ $# -eq "2" ]]; then
    printf "right number of arguments\n"
    if [[ -f $1 && -d $2 ]]; then
        moveAndLinkFile $1 $2
    elif [[ -d $1 && -d $2 ]]; then
        moveAndLinkDirectory $1 $2
    fi
else
    if [[ $# -gt 2 ]]; then
        printf "lmv: too many arguments\n"
    else
        printf "lmv: too few arguments\n"
    fi
fi
