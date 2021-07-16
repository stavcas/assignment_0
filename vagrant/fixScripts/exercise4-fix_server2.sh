#!/bin/bash
echo "192.168.100.10 server1" | sudo tee -a /etc/hosts > /dev/null
cat /vagrant/.vagrant/machines/server1/virtualbox/private_key | sudo tee /home/vagrant/.ssh/id_rsa > /dev/null && sudo chmod 600 /home/vagrant/.ssh/id_rsa && sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa 
cp /home/vagrant/.ssh/id_rsa /root/.ssh/id_rsa && sudo chmod 600 /root/.ssh/id_rsa && sudo chown root:root /root/.ssh/id_rsa 
scp -q /vagrant/.vagrant/machines/server2/virtualbox/private_key vagrant@server1:/home/vagrant/.ssh/id_rsa
ssh vagrant@server1 'sudo chmod 600 /home/vagrant/.ssh/id_rsa'
ssh vagrant@server1 'sudo cp /home/vagrant/.ssh/id_rsa /root/.ssh/id_rsa && sudo chown root:root /root/.ssh/id_rsa'
