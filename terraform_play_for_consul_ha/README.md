### Prerequisite

 Overall terraform modules are quite descriptive in itself so you will observe very less comments on any above resources until it is not clear enough in its name.
 
 The terraform script are mainly written for 3 node consul configuration with the default vpc and using a default security group. I suppose it is not required until specified. But we can easily provision such prerequisite resources  with terraform `aws_vpc` and `aws_security_group`  modules if need some customization. Similarly i am using default dns names to call consul nodes.
 
## Instance images used: Ubuntu:16.04 64-bit (x86)
## AWS authentication keys

AWS authentication keys i.e; ```AWS_ACCESS_KEY_ID``` and  `AWS_SECRET_ACCESS_KEY` are set as environment variables on the host server.
SSH authentication keys: are being generated to provide ssh key access to newly provisioned instances and the ssh-public key is to be imported to the instances while provisioning.

Also i have imported a `script.sh` file to update and install the apt packages like python and unzip for ubuntu which are required by ansible playbooks.
