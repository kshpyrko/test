#!/bin/bash
set -o nounset
set -o errexit
cd /home/terraform
echo $"export PATH=\$PATH:$(pwd)" >> ~/.bash_profile
source ~/.bash_profile
terraform apply
cd /etc/ansible
sleep 1m
ssh-keygen -R 10.0.0.4
ansible-playbook -i hosts test.yml
exit 0
