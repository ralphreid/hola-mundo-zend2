#!/usr/bin/env bash

apt-get update
apt-get install -y python-software-properties
add-apt-repository -y ppa:rquillo/ansible
apt-get install -y ansible
mkdir -p /etc/ansible
echo '[localhost]' > /etc/ansible/hosts
echo '127.0.0.1' >> /etc/ansible/hosts
su vagrant -c "ansible-playbook /vagrant/ansible-local.yml"
