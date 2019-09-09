#!/usr/bin/env bash

source ansible-env.sh

get_inventory
if [ ! -f ${inventory} ] ; then
  echo "Specified inventory file ${inventory} not found!"
  exit
fi

remote_host="localhost"
read -p "Enter remote host [${remote_host}]: " remote_host_input
remote_host="${remote_host_input:-${remote_host}}"

ansible ${remote_host} -i ${inventory} -m setup
