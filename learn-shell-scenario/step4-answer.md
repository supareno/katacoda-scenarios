The command to launch is 

`sed -e 's/java\:v8/openjdk\:v11/g' config.yml > config-prod.yml`{{execute}}

Step by step it means:

* search the `java\:v8` pattern and 
* replace it with `openjdk\:v11` and
* use the **g** flag for global replacement and
* replace the text on the _config.yml_ file and
* copy the stdout to a new file called _config-prod.yml_

easy ;-)
