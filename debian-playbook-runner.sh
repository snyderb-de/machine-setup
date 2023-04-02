#!/bin/sh

username="$USER"
printf "%s password: " "$username"
stty -echo
IFS= read -r password
stty echo
printf "\n"

export ANSIBLE_BECOME_PASS="$password"

# DryRun the playbook
ansible-playbook debian-playbook.yml --check


# Run the playbook
# ansible-playbook debian-playbook.yml

# Unset the password
unset ANSIBLE_BECOME_PASS
