#!/bin/bash

if  (($# >= 2))
then
    DEST=${!#}  
    DEST_HOST=""
    FILES=${@:1:$#-1}

    case $HOSTNAME in
        (server1) DEST_HOST="server2";;
        (server2) DEST_HOST="server1";;
    esac
    cat /home/vagrant/.ssh/id_rsa | sudo tee /root/.ssh/id_rsa > /dev/null && sudo chmod 600 /root/.ssh/id_rsa > /dev/null
    cat /home/vagrant/.ssh/authorized_keys | sudo tee /root/.ssh/authorized_keys > /dev/null && sudo chmod 600 /root/.ssh/authorized_keys > /dev/null
    
    scp -q $FILES $USER@$DEST_HOST:$DEST$SOURCE
    echo $(du -b -c $FILES | tail -1 | cut -f1)
    
else
    echo "Number of arguments need to be greater than 2"
    exit 1
fi