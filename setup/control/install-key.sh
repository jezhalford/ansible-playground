#!/bin/bash

cp /vagrant/setup/host/file.rsa /home/vagrant/.ssh

chmod 600 /home/vagrant/.ssh/file.rsa
chown vagrant:vagrant /home/vagrant/.ssh/file.rsa

echo "Host host" >> /home/vagrant/.ssh/config
echo "Hostname 33.33.33.11" >> /home/vagrant/.ssh/config
echo "IdentityFile ~/.ssh/file.rsa" >> /home/vagrant/.ssh/config

chmod 600  /home/vagrant/.ssh/config
chown vagrant:vagrant  /home/vagrant/.ssh/config
