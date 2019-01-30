#!/bin/bash
###########################################
#
#  script used to build the folder and files
#  used for the shell's katacoda scenario.
#
#  This script builds a tree with files, folders
#  with differents names, sizes, ...
#
#  version 1.0
#
###########################################
cd /root/
mkdir target

# generate files
for folder in {0..3}
do
    mkdir "target/logs-$folder"
    for i in {0..15}
    do
        echo "fooo !" > "target/logs-$folder/logfile-$i.log"
        if [ `expr $i % 2` -eq 0 ]
        then
            echo "modulo 2 :-)" > "target/logs-$folder/foo-logfile-$i.log"
        fi
    done
done

touch target/logs-0/app.properties
