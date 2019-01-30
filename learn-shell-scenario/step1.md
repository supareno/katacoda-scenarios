# List files and execute actions on listed files

As seen in the presentation, listing files could be done with _ls_ or _find_. And, one of the best part of the shell is that you can combine commands to list, filter and execute actions on listed files.

## List files with _find_

The _find_ command is a command line utility for walking a file hierarchy. It can be used to find files and directories and perform subsequent operations on them. It supports searching by file, folder, name, creation date, modification date, owner and permissions.

It has lots of options. `man find`{{execute}} will show you how to use it and the options associated.

### Search files

`find target/logs-0`{{execute}}

### Search all the files that end with _log_ 

_-name_ is used to filter on the file name

`find target/logs-0 -name "*.log"`{{execute}}

### Search files and interactive delete them with _-exec_

_-i_ is used for interactive delete

`find target/logs-0 -name "*.log" -exec rm -i {} \;`{{execute}}


## List files with _ls_

The _ls_ command is a command line utility to list directory contents.

It has lots of options. `man ls`{{execute}} will show you how to use it and the options associated.

### List files of a folder

_-la_ is used to list in long format all the files (normal, hidden, `.` and  `..` )

`ls -la target/logs-2`{{execute}}

### Count files of a folder

`ls target/logs-2 | wc -l`{{execute}}

## Exercices

Write a command to list all the log files bigger than 50 Ko in the **target** folder


