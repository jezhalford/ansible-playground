#!/bin/bash

mkdir -p /home/vagrant/.ssh
ssh-keygen -f /home/vagrant/.ssh/file.rsa -t rsa -N ''
cat /home/vagrant/.ssh/file.rsa.pub >> /home/vagrant/.ssh/authorized_keys

chown -R vagrant:vagrant /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
chmod 644 /home/vagrant/.ssh/*.pub
chmod 600 /home/vagrant/.ssh/*.rsa
chmod 600 /home/vagrant/.ssh/authorized_keys

rm /home/vagrant/.ssh/file.rsa.pub
cp /home/vagrant/.ssh/file.rsa /vagrant/setup/host/file.rsa
