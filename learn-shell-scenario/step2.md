# List files, one more time

_find_ is more powerful tool than _ls_

## Find files by size

We can find files according their size. The + and - prefixes signify greater than and less than.

### Find big files

`find target/ -size +2k`{{execute}}

### Find small files

`find target/ -size -2k`{{execute}}

## Using it with regex

### Using with _-not_

`find target/logs-3/ -not -name "*foo" -name "l*" -type f`{{execute}}


### Using with regex

First, create a few folders
`mkdir course1.1.0.0   course1.1.0.5   course1.2.0.0 cours3`{{execute}}

Then, with only the folder named _courseX.Y.Z_

`find . -type d -iregex '^\./course\([0-9]\.\)*[0-9]$'`{{execute}}

If you  change the regex with `'^\./cours\([0-9]\.\)*[0-9]$'`, you will only list 1 folder. 
