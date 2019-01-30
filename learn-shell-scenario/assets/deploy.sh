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

# creating a log file with random content
LOGFILE=target/random-log.log
for i in {0..1000}
do
    DATE=`date '+%Y-%m-%d %H:%M:%S'`
    echo "[$DATE] [INFO] something here..." >> $LOGFILE
    if [ `expr $i % 10` -eq 0 ]
    then
        echo "[$DATE] [WARN] oups, something wrong here but is a warning ..." >> $LOGFILE
        echo "               maybe here or maybe not ..." >> $LOGFILE
        echo "               be careful ..." >> $LOGFILE
    fi
    if [ `expr $i % 25` -eq 0 ]
    then
        echo "[$DATE] [ERROR] argh, an error occurs ..." >> $LOGFILE
        echo "               an error occurs on line $i ..." >> $LOGFILE
        echo "               maybe an NPE or something else ..." >> $LOGFILE
    fi
    if [ `expr $i % 35` -eq 0 ]
    then
echo "[$DATE] [FATAL] argh, a fatal error occurs [ERRORCODE:32] [CODEERROR:54] [ITEM:666] id: $i000000" >> $LOGFILE
    fi
done
