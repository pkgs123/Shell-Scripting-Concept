
#!/bin/bash

######Script Details#########
#Author Name: Prashant Kumar Singh
#Date: 03-06-24
#Details: Concept of if if else and for
##################END#########
set -x
set -e
set -o

#Logic
a=4
b=10
if [$a > $b]
then
 echo "a is greater than b"
else
 echo "b is greater than a"
fi
