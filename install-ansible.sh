#!/bin/bash

echo "We are going to check the system, update it, add the ansible repo, then install ansible...
When we are done the ansible version will be displayed"

# Update package index
sudo apt update

# Install software-properties-common
sudo apt install -y software-properties-common

# Add Ansible PPA
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Update package index again
sudo apt update

# Install Ansible
sudo apt install -y ansible

# Check Ansible version
ansible --version

echo "Ansible has been installed!"
