#!/bin/sh
:

VERSION=0.1
### by lizs lzs1999#gmail.com

#curl -L https://github.com/docker/compose/releases/download/1.20.1/docker-compose-`uname -s`-`uname -m` > /bin/docker-compose
#ln -s /bin/docker /bin/doc && chmod +x /bin/doc
#ln -s /bin/docker-compose /bin/dcc && chmod +x /bin/dcc



if [ $# -eq 2 ]
then
    docker exec -it $1 /bin/$2
elif [ $# -eq 1 ]
then
    docker exec -it $1 /bin/bash
fi

if [ $# -gt 2 -o $# -eq 0 -o $? -ne 0 ]
then
    echo -e "\nUsage:\n  $0 CONTAINER sh"
fi


