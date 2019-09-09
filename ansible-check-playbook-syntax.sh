#!/usr/bin/env bash

source ansible-env.sh

get_inventory
if [ ! -f ${inventory} ] ; then
  echo "Specified inventory file ${inventory} not found"
  exit
fi

get_playbook
if [ ! -f ${playbook} ] ; then
  echo "Specified playbook file ${playbook} not found"
  exit
fi

ansible-playbook -i ${inventory} --syntax-check ${playbook}
