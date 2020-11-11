#!/bin/bash

echo "start clone"

for git_url in $(cat git-url.conf); do
    echo "start $git_url clone"
    
    if git clone $git_url ; then
        echo "$git_url clone successful"
    else
        echo "$git_url clone fail"
    fi

done

echo "congratulations ！！ all clone end"