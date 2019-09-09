#!/usr/bin/env bash

source ansible-env.sh

get_inventory
if [ ! -f ${inventory} ] ; then
  echo "Specified inventory file ${inventory} not found!"
  exit
fi

ansible all -i ${inventory} --list-hosts
