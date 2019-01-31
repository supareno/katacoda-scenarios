# Search a text

With a terminal, you can search a text, an expression in a file, multiples files, extract text,... And it is faster than your favorite editor.

## Search with _grep_

The _grep_ command is a command line utility for searching plain-text data sets for lines that match a regular expression. By default, _grep_ is case sentitive.

It has lots of options. `man grep`{{execute}} will show you how to use it and the options associated.

### Search a word

To search a word in a file, just use _grep_ as follow

`grep FATAL target/random-log.log`{{execute}}

To indicate the line number, add the _-n_ option

`grep -n FATAL target/random-log.log`{{execute}}

To count the occurence, add the _-c_ option

`grep -c FATAL target/random-log.log`{{execute}}

To ignore case, add the _-i_ option

`grep -i FatAL target/random-log.log`{{execute}}

As you can see, it highlights uppercase and lowercase words.


With _grep_, you can display the context associated to the occurence with _-B_ and _-A_ options.
* _-B<n>_ to print n lines before the occurence found 
* _-A<n>_ to print n lines after the occurence found 

`grep -B1 -A1 FATAL target/random-log.log`{{execute}}

### Search with a regex

Use the _-E_ option to search with a regex to retreive all the 3 numbers error code

`grep -E "ERRORCODE\:[0-9]{3}" target/random-log.log`{{execute}}

With the _-o_ option, you can isolate each match

`grep -oE "ERRORCODE\:[0-9]{3}" target/random-log.log`{{execute}} 

Combinated with _sort_ and _uniq_, you can return a list with unique error codes:

`grep -oE "ERRORCODE\:[0-9]{3}" target/random-log.log | sort | uniq`{{execute}} 

## Exercices

Count the occurences of **WARN** in **all** the files that ends with _log_ in the target folder.
