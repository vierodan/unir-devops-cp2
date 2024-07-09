#!/bin/bash

# Source of script with sensitive data about azure credentials. (This .sh is not included on the git repository)
source ./export_sensitive_data.sh

echo "ACR_NAME=$ACR_NAME"
echo "RESOURCE_GROUP=$RESOURCE_GROUP"

# Run the Ansible playbook - create images on ACR using Skopeo
ansible-playbook -i ansible_playbook_host.yml ansible_playbook_copy_images_to_acr.yml

# Run the Ansible playbook - Add SSH public key to Azure VM
ansible-playbook -i ansible_playbook_host.yml ansible_playbook_add_ssh_public_key_to_vm.yml

# Run the Ansible playbook - Install all necessary softwre on Azure VM
ansible-playbook -i ansible_vm_ip_inventory.ini ansible_playbook_install_software_on_vm.yml

# Run the Ansible playbook - Run nginx container on Azure VM using Posman
ansible-playbook -i ansible_vm_ip_inventory.ini ansible_playbook_run_nginx_container_on_vm.yml






