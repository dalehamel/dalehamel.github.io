#!/bin/bash
for each in *.markdown; do 
  date=` echo $each | sed 's/\(..........\).*/\1/g'`

#modified: 2013-05-31
  sed  -i "s/\(^title.*$\)/\1\nmodified: $date/g" $each
done  

