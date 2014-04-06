#!/bin/bash
for each in _posts/*.markdown; do 
  #name=` echo $each | sed 's/...........\(.*\).markdown/\1/g' | tr -s "-" " "  | sed -e "s/\b\(.\)/\u\1/g"`;  
  
  
  grep wordpress_url: doc/convert/todo/$each
  sed -i "s/ title/ $name/g" $each
done  

