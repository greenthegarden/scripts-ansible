#!/usr/bin/env bash

extension="yml"
inventory="hosts.${extension}"
playbook="site.${extension}"
requirements="requirements.${extension}"
roles_dir="./roles"

function get_inventory {
  read -p "Enter inventory file name [${inventory}]: " inventory_input
  inventory="${inventory_input:-${inventory}}"
}

function get_playbook {
  read -p "Enter remote host [${remote_host}]: " remote_host_input
  remote_host="${remote_host_input:-${remote_host}}"
}

function get_requirements {
  read -p "Enter requirements file name [${requirements}]: " requirements_input
  requirements="${requirements_input:-${requirements}}"
}
