#!/bin/bash
if [[ $# -ne 2 ]];
then echo -e "this script must include 2 parametrs:\n1) dir1\n2) dir2"
elif !([[ -d $1 ]] && [[ -d $2 ]]);
then echo -e "invalid directories"
else
{
i=0
for file1 in $1/* 
  do for file2 in $2/* 
      do
	cmp -s $file1 $file2 && echo "$file1 == $file2" 
        i=$((i+1))
      done;
  done;
echo "$i files was watched"
}
fi
exit 0
