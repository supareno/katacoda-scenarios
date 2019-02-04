The command to lauch is

`find target/ -name "*.log" -print | xargs grep WARN | wc -l > count-warn`{{execute}}
 
_-print_ with find will print all the results and the _xargs_ command will take each result 
and execute the next command on the result.

After each grep, the _wc -l_ command count the number of result and the count is written in the 
_count-warn_ file :-)

