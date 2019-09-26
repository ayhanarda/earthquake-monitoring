#!/bin/bash
son_deprem=`curl -s http://www.koeri.boun.edu.tr/scripts/lst0.asp | grep -a "2019" |head -1 | awk '{print $7;}' | sed 's:.*\([0-9][0-9]*\).*:\1:'`
ayhanarda_olcek=5
if [[ $son_deprem > $ayhanarda_olcek ]]; then
  echo "1" > /usr/share/icingaweb2/public/deprem.txt;
else
  echo "0" > /usr/share/icingaweb2/public/deprem.txt;
  exit;
fi
