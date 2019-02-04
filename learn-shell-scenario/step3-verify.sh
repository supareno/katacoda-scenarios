#!/bin/bash

#######
# script used to verify that the user has correctly execute the exercise
#
# Produce a file with the count of the 'WARN' occurences in all the 'log' files
# `find target/ -name "*.log" -print | xargs grep WARN | wc -l > count-warn`
#
#######
result=1

checkCount(){
    if [ -e /root/count-warn ]
    then
        if [ `cat /root/count-warn` -eq 223 ]
        then
            result=0
        fi
    fi
    return 1
}

[ $result -eq 0 ] && echo "done"
