#!/bin/bash

#######
# script used to verify that the user has correctly execute the exercise
#
# Copy the config.yml file as config-prod.yml and replace the java:v8 value with
# openjdk:v11 value (in one line)
#
# `sed -e 's/java\:v8/openjdk\:v11/g' config.yml > config-prod.yml`
#
#######

checkCount(){
    if [ -d /opt/config-prod.yml ]
    then
        return `grep "supareno/openjdk:v11" /opt/config-prod.yml | wc -l` -gt 0
    fi
    return 1
}

[ checkCount -eq 1 ] && echo "done"
