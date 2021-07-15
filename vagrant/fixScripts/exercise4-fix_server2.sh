#!/bin/bash
#add fix to exercise4-server1 here
echo "192.168.100.10 server1" | sudo tee -a /etc/hosts > /dev/null
cat /vagrant/.vagrant/machines/server1/virtualbox/private_key | sudo tee ~/.ssh/id_rsa  > /dev/null && sudo chmod 600 ~/.ssh/id_rsa && sudo chown vagrant:vagrant ~/.ssh/id_rsa
scp -q /vagrant/.vagrant/machines/server2/virtualbox/private_key vagrant@server1:/home/vagrant/.ssh/id_rsa
ssh server1 'chmod 600 /vagrant/home/.ssh/id_rsa'