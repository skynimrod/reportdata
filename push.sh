#!/bin/sh
time=`date "+%Y-%m-%d %H:%M:%S "`
echo "${time}" > aa.txt
if [ -n "$1" ]; then  
    echo "commit $1!";
    git add .;
    git commit -m "$1";
    git push -u test master;
else
    echo  "no param, exit!";
fi
echo "end!"