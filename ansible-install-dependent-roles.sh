#!/usr/bin/env bash

source ansible-env.sh

get_requirements
if [ ! -f ${requirements} ] ; then
  echo "Specified requirements file ${requirements} not found!"
  exit
fi

read -p "Enter roles directory [${roles_dir}]: " roles_directory_input
roles_dir="${roles_directory_input:-${roles_dir}}"
if [ ! -d ${roles_dir} ] ; then
  echo "Roles directory ${roles_dir} not found!"
  exit
fi

ansible-galaxy install -r ../requirements.yml -p ../roles/
