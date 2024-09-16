#!/bin/bash
cat $1 | egrep '^Host( IP)?:' | cut -d':' -f2 | sed 's/ //g' | egrep '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' | sed 's/$/\/32/g'
