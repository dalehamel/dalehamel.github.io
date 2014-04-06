#!/bin/bash
for each in _posts/*.markdown; do 

  name=`basename $each`
  #name=` echo $each | sed 's/...........\(.*\).markdown/\1/g' | tr -s "-" " "  | sed -e "s/\b\(.\)/\u\1/g"`;  
  origpost=doc/convert/todo/$name 

  if [ -f "$origpost" ];then
    
    id=`grep wordpress_id: $origpost | sed 's/wordpress_id: //g'`
#    sed -i "s|\(^layout: post$\)|\1\nredirect_from:\n  - /archives/$id/\n  - /blog/?p=$id/|g" $each
  fi
done  

