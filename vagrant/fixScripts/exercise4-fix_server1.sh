#!/bin/bash
#add fix to exercise4-server1 here
echo "192.168.100.11 server2" | sudo tee -a /etc/hosts  > /dev/null
cat /home/vagrant/.ssh/authorized_keys | sudo tee -a /root/.ssh/authorized_keys > /dev/null && sudo chmod 600 /root/.ssh/authorized_keys && sudo chown root:root /root/.ssh/authorized_keys