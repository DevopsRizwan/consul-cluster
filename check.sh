#!/bin/bash
dir="./terraform_play_for_consul_ha"
dir_ansible="./ansible_play_for_consul_ha"

cd ${dir}/
terraform init
terraform apply -auto-approve

cd ../${dir_ansible}
ansible-playbook -vvv create-file.yml -e WORKSPACE=${WORKSPACE}
sleep 10
ansible-playbook -vvvv consul-configure.yml -e WORKSPACE=${WORKSPACE}
