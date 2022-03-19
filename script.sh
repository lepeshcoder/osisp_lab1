#!/bin/bash
if [[ $# -ne 2 ]]; 
then echo -e "This command must include 2 parameters\n1)source file\n2)executable file" >&2
elif ! [[ -f $1 ]]; 
then echo "$1 is not a valid file" >&2
else gcc $1 -o $2 && ./$2;
fi
