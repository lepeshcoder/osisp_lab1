#!/bin/bash
if [[ $# -ne 3 ]]; 
then echo -e "here must be 3 parametrs: \n1)filename\n2)directory\n3)extension"
elif ! [[ -d $2 ]]; 
then echo "invalid directory" >&2
else
{
    echo > $1
    find $2 -maxdepth 1 -type f -name "*.$3" -printf "%f\n" > $1
    sort -o $1 $1
}
fi
exit 0

