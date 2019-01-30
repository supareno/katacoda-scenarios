# List files and execute actions on listed files

As seen in the presentation, listing files could be done with _ls_ or _find_. And, one of the best part of the shell is that you can combine commands to list, filter and execute actions on listed files.

## List files with _find_

### Searching files

`find target/logs-0`{{execute}}

### Searching all the files that end with _log_ 

_-name_ is used to filder on the file name

`find target/logs-0 -name "*.log"`{{execute}}

### Searching files and deleting them with _-exec_

`find target/logs-0 -name "*.log" -exec rm {} \;`{{execute}}


## List files with _ls_

### Counting files of a folder

`find target/logs-2 | wc -l`{{execute}}
