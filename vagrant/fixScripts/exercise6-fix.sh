#!/bin/bash
DEST=${!#}  
DEST_HOST=""
FILES=${@:1:$#-1}

if  (($# >= 2))
then
    case $HOSTNAME in
        (server1) DEST_HOST="server2";;
        (server2) DEST_HOST="server1";;
    esac
    cat ~/.ssh/id_rsa | sudo tee /root/.ssh/id_rsa && sudo chmod 600 /root/.ssh/id_rsa > /dev/null
    cat ~/.ssh/authorized_keys | sudo tee -a /root/.ssh/authorized_keys && sudo chmod 600 /root/.ssh/authorized_keys > /dev/null
    
    scp -v $FILES $USER@$DEST_HOST:$DEST$SOURCE
    echo $(du -b -c $FILES | tail -1 | cut -f1)
    
else
    echo "Number of arguments need to be greater than 2"
    exit 1
fi