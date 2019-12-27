#!/bin/bash

cd /var/www/html/testing/testing/
git_status="$(git status)"

readarray -t lines < <(echo "$git_status")
#echo "${b}"
echo "${lines[0]}"

if [ "${lines[0]}" == "On branch hello" ]
then
   git pull https://fahim001-bot:rehman001@github.com/fahim001-bot/testing.git
else
   echo "Please verify the brach again"
fi
