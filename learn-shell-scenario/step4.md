# Search and replace a text

After searching, we can now replace a text in a file. It is very useful when you have to edit a file and replace all the occurences of a word in a file or a set of files.

The sed command is a command line utility for a **s**tream **ed**itor for filtering and transforming text.

It has lots of options. `man sed`{{execute}} will show you how to use it and the options associated.

## Play with _sed_

### Delete lines

With _sed_, you can delete lines

`sed -e '1d' target/logs-0/foo-logfile-0.log`{{execute}}

If you want to delete more line, your can use the line to delete as a list `'3d; 4; 7;'` or an interval `'3,6 d'`. 

### Delete or replace occurence

Delete all the comments from an httpd configuration file

`sed -e '/^[[:space:]]*#/ d' /opt/httpd.conf`{{execute}}

## Exercices

Duplicate the _config.yml_ configuration file as a production configuration file and replace the occurences of **supareno/java:v8** with **supareno/java:v11**
