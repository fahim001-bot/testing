#!/bin/bash

#ssh rebel-0031@192.168.10.158 '
#Current_Status='On branch master
#Your branch is ahead of 'origin/master' by 4 commits.
#  (use "git push" to publish your local commits)

#nothing to commit, working tree clean'
#echo "${Current_Status}"

cd /var/www/html/testing/testing/
a=/var/www/html/testing/Maxim/status.txt
b="$(git status)"
#echo "${Status}"

if [ $a == $b ]
then
   echo "a is equal to b"
else
   echo "a is not equal to b"
fi
