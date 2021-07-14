#!/bin/bash
head -n -3 /etc/apache2/sites-available/000-default.conf | sudo tee /etc/apache2/sites-available/000-default.conf
echo '        <Location "/">
          Allow from all
          Order Deny,Allow
        </Location>' | sudo tee -a /etc/apache2/sites-available/000-default.conf
sudo systemctl reload apache2