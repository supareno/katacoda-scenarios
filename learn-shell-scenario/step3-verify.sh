#!/bin/bash

#######
# script used to verify that the user has correctly execute the exercise
#
# Produce a file with the count of the 'WARN' occurences in all the 'log' files
# `find target/ -name "*.log" -print | xargs grep WARN | wc -l > count-warn`
#
#######

checkCount(){
    if [ [ -d /root/count-warn ] && [ `cat /root/count-warn` -eq 223 ] ]
    then
        return 0
    fi
    return 1
}

[ checkCount -eq 0 ] && echo "done"
