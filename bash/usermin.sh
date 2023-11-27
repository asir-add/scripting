#!/bin/bash

while read usuario
do
    uid=$(echo $usuario | cut -f3 -d:)
    if [ $uid -ge 1000 ]
    then
        username=$(echo $usuario | cut -f1 -d:)
        shell=$(echo $usuario | cut -f7 -d:)
        echo $uid,$username,$shell
    fi
done < /etc/passwd