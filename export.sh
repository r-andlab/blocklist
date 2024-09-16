#/bin/sh
cat $1 | grep -v "^#" | awk '{print $1}'
