#!/bin/bash
for each in *.markdown; do 
  date=` echo $each | sed 's/\(..........\).*/\1/g'`

#modified: 2013-05-31
  sed  "s/\(^title.*$\)/\1\nmodified: $date/g" $each
done  

