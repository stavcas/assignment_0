#!/bin/bash
echo '   StrictHostKeyChecking no
   UserKnownHostsFile=/dev/null
   LogLevel ERROR' | sudo tee -a /etc/ssh/ssh_config  > /dev/null