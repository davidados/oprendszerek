#!/bin/bash



megtalalt=0

nemtalalt=0



while [ $# -ne 0 ]; do

  fn=$1



  if [ ! -f "$fn" ]; then

    echo "A $fn nem talalhato."

    nemtalalt=$((nemtalalt + 1))

  elif [ -f "$fn" ]; then

    megtalalt=$((megtalalt + 1))

    ls -l "$fn" | awk '{ print $3, $9 }'

  fi



  shift

done



echo "Megtalaltak szama: $megtalalt"

echo "Nem talaltak szama: $nemtalalt"

