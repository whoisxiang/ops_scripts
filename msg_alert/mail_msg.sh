#!/bin/bash
#export.UTF-8
FILE=/tmp/mailtmp.txt
echo "$3" >$FILE
dos2unix -k $FILE
/bin/mail -s "$2" $1 < $FILE
