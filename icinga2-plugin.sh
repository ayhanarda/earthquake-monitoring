#!/bin/bash
disk=`cat /usr/share/icingaweb2/public/deprem.txt`
case $disk in
[0]*)
echo "OK"
exit 0
;;
[1]*)
echo "WARNING"
exit 1
;;
esac
