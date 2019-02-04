#!/bin/bash

#######
# script used to verify that the user has correctly execute the exercise
#
# Produce a file with the count of the files bigger than 50 ko
#
# `find target/ -size +50k | wc -l > count-50k`
#
#######

result=1

checkCount(){
    if [ -e /root/count-50k ]
    then
        if [ `cat /root/count-50k` -eq 1 ]
        then
            result=0
        fi
    fi
}
checkCount

[ $result -eq 0 ] && echo "done"
