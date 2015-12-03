#!/bin/sh

find . -maxdepth 1 -type d  | while read FILE
do
    dir_name=$(basename $FILE)

    if [ '.' != $dir_name ]
    then
        echo "----------------------------------------------------"
        echo  $dir_name
        echo "----------------------------------------------------"
        cd $dir_name
        git pull -v --progress "origin"
        cd ..
    fi
done
