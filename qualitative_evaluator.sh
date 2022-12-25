#!/bin/bash

sourcefilename="list.csv"

for line in `cat ${sourcefilename}`; do
    IFS=, read -r studentid giturl <<< $line
    IFS=/ read -r proto blank domain user repo <<< $giturl
    repo=`echo $repo | tr -d '\r'`
    
    repodir=$studentid-$user-$repo

    # check if already cloned
    if [ ! -d $repodir ]; then
        git clone $giturl $repodir
    fi
    
    # go into the dir
    cd $repodir
    clear
    echo \#\#\#$studentid
    git log --oneline --graph | head -n 20
    read -p "Press any key to continue"
    cd ..

done
