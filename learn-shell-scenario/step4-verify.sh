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

result=0

checkCount(){
    if [ -e /opt/config-prod.yml ]
    then
        result=$(grep "supareno/openjdk:v11" /opt/config-prod.yml | wc -l)
    fi
}

checkCount

[ $result -eq 2 ] && echo "done"
