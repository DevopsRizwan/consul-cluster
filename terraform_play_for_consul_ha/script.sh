#!/bin/bash
# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
	  sleep 1
  done
  # update 
  apt-get update
  apt-get -y install python
  apt-get -y install unzip
