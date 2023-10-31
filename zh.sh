#!/bin/bash







if [ $# -ne 3 ]

    then

    echo " nem 3 parameter lett megadva"

    exit

fi



ls -l $1 | awk '{ print $3,$9 }'

ls -l $2 | awk '{ print $3,$9 }'

ls -l $3 | awk '{ print $3,$9 }'