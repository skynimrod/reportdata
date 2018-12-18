#!/bin/sh
time=`date "+%Y%m%d"`
echo "${time}"
if [ -n "$1" ]; then  
    echo "commit $1!";
    git add .;
    git commit -m "$1";
    git push -u test master;
else
    git commit -m "${time}";
    git push -u test master;
fi
echo "end!"