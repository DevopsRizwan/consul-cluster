### Ansible Usage

Ansible is a very powerful and simple to use when it comes to configuration automation. Here, it has been choosen to meet the requirement of installing and configuring the consul HA set-up.
Ansible hosts file has been replaced by the respective node-ips provisioned during `terraform apply`.

`create-file` is the playbook being called by jenkins job initially to set up [consul_nodes] group in ansible inventory.
Similarly for installing and configuring the consul a `role` `consul` is written which is dynamically generating the service files and `/etc/hosts` of each node by using template.
