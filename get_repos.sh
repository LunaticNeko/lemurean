#!/bin/bash

reportfilename="scores.csv"
sourcefilename="list.csv"

echo "id,commits,branches,merges,tags,message_q" >${reportfilename}


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
    commits=$(git rev-list --count HEAD)
    merges=$(git log --merges --oneline | wc -l)
    branches=$(($(git log --oneline | wc -l) - $(git log --first-parent --oneline --graph | wc -l)))
    tags=$(git tag -l | wc -l)
    formatted_str="${studentid},${commits},${branches},${merges},${tags}"
    cd ..
    echo ${formatted_str}
    echo ${formatted_str}\, >>${reportfilename}

done
