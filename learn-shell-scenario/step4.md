# Search and replace a text

After searching, we can now replace a text in a file. It is very useful when you have to edit a file and replace all the occurences of a word in a file or a set of files.

The sed command is a command line utility for a **s**tream **ed**itor for filtering and transforming text.

It has lots of options. `man sed`{{execute}} will show you how to use it and the options associated.

## Play with _sed_

### Delete lines

With _sed_, you can delete lines
First, read the file

`cat target/logs-0/foo-logfile-0.log`{{execute}}

Then, delete the line 

`sed -i '1d' target/logs-0/foo-logfile-0.log`{{execute}}

And re-read the file

`cat target/logs-0/foo-logfile-0.log`{{execute}}

The file should be empty ! The _-i_ flag replace in the file and not in the standard input. 

If you want to delete more line, your can use the line to delete as a list `'3d; 4; 7;'` or an interval `'3,6 d'`. 

### Delete or replace occurence

Delete all the comments from an httpd configuration file

`sed -e '/^[[:space:]]*#/ d' /opt/httpd.conf`{{execute}}

#### Substitution

To replace an occurence with another, the pattern will be different:  `'s/toreplace/replacewith/'`. It can be used like this:

`sed -e 's/conf\/extra/myconf\/mega/g' /opt/httpd.conf`{{execute}}

The _g_ at the end is for **all** the occurences found.

#### Transliteration

To switch some characters with another, the pattern will be: `'y/'`.
First, create a file with some accentued characters:

`echo "être ou ne pas être..." > target/2beornot2be`{{execute}}

After, switch accentued characters with non accentued

`sed -re 'y/éèê/eee/' target/2beornot2be`{{execute}}

By this way, it is easier to replace just a char in every word than searching for each word and replace it...

## Exercice

Go to _/opt_ folder and replace the occurences of **supareno/java:v8** with **supareno/openjdk:v11** in the _config.yml_ file and write them in a file named _config-prod.yml_.
