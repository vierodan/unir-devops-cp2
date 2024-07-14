#!/bin/bash

# Source of script with sensitive data about azure credentials. (This .sh is not included on the git repository)
source ./export_sensitive_data.sh

#Set Ansible Python Interpetrer path for localhost
export ANSIBLE_PYTHON_INTERPRETER=~/myenv/bin/python3.12

# Run the Ansible playbook - Copy images to ACR using Skopeo
ansible-playbook -i ansible_inventory_localhost.yml ansible_playbook_copy_images_to_acr.yml

#Run the Ansible playbook - Deploy Voting App into AKS
ansible-playbook -i ansible_inventory_localhost.yml ansible_playbook_deploy_containers_on_aks.yml

# Run the Ansible playbook - Add SSH public key to Azure VM
ansible-playbook -i ansible_inventory_localhost.yml ansible_playbook_add_ssh_public_key_to_vm.yml

#Set Ansible Python Interpetrer path for linux VM
export ANSIBLE_PYTHON_INTERPRETER=/usr/bin/python3.10

# Run the Ansible playbook - Install all necessary softwre on Azure VM
ansible-playbook -i ansible_inventory_vm.ini ansible_playbook_install_software_on_vm.yml

# Run the Ansible playbook - Run nginx container on Azure VM using Posman
ansible-playbook -i ansible_inventory_vm.ini ansible_playbook_run_nginx_container_on_vm.yml

#Set Ansible Python Interpetrer path for localhost
export ANSIBLE_PYTHON_INTERPRETER=~/myenv/bin/python3.12

# Run the Ansible playbook - Calculate public IPs
ansible-playbook -i ansible_inventory_localhost.yml ansible_playbook_calculate_public_ips.yml



