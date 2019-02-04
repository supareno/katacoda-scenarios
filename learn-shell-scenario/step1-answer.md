The command to lauch is

`find target/ -size +50k | wc -l > count-50k`{{execute}}

Step by step it means:

* find all the files with a size superior to 50 k in the _target_ folder 
* count the items returned
*  write to _count-50k_ file

easy :-)
