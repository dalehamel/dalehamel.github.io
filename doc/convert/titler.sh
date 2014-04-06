#!/bin/bash
for each in *.markdown; do 
  name=` echo $each | sed 's/...........\(.*\).markdown/\1/g' | tr -s "-" " "  | sed -e "s/\b\(.\)/\u\1/g"`;  

  echo $name
  sed -i "s/ title/ $name/g" $each
done  

