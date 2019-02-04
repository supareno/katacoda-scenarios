#!/bin/bash

#######
# script used to verify that the user has correctly execute the exercise
#
# Produce a file with the count of the files bigger than 50 ko
#
# `find target/ -size +50k | wc -l > count-50k`
#
#######

checkCount(){
    if [ [ -d /root/count-50k ] && [ `cat /root/count-50k` -eq 1 ] ]
    then
        return 0
    fi
    return 1
}

[ checkCount -eq 0 ] && echo "done"
