#!/bin/bash
dir="./terraform_play_for_consul_ha"
dir_ansible="./ansible_play_for_consul_ha"

cd ${dir}/
terraform init
terraform apply -auto-approve

cd ../${dir_ansible}
ansible-playbook -vvv create-file.yml
sleep 10
ansible-playbook -vvv consul-configure.yml
