The command to lauch is

`find target/ -name "*.log" -print | xargs grep WARN | wc -l > count-warn`{{execute}}

Step by step it means:

* find all the files ending with **log** in the _target_ folder
* using the _-print_ argument to print all the results and use them with the _xargs_ command
* using _xargs_ to execute the grep command that will take each result and execute the next command on the result.
* and counting the number of result with _wc -l_ and copt it to the _count-warn_ file

Or you can use the _-exec_ option of _find_ to execute a command on each result as follow (without writing to a file)

`find target/ -name "*log" -exec grep WARN -i {}  \; | wc -l`{{execute}}

easy ;-)

