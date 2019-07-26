# How to automate the creation of a Consul cluster
## High availibility of Consul cluster- 3 Node setup in 3 different availibility zones of any aws region. 

 There are various ways to attain a fully automated set-up of HA-Consul cluster, for instance we can have end to end solution in only  ansible or terraform or of any one scripted language; but this solution is designed to keep in mind, to make the use of best powerful features of  freely available opensource product/tool.
 
 Three main tasks are involved here:-
   -  Provisioning of infrastrature (In this case i am using AWS)
   -  Installation of Consul on respected servers in different zones (You can specify any avaiibility zone and AWS Region)
   -  Configuration of consul nodes to act and maintain HA of Consul servers.
   
For provisioning i have choosen Hashicorp's Terraform, reason as it has a feature to maintain the state of your infrastructure. Similarly for configuration management i.e; for installation and configuration  of the Consul HA Ansible has several advantages over terraform.

 Architecture of above setup:-
                                         ![Image](https://github.com/DevopsRizwan/consul-cluster/blob/master/consul.jpg)

 Final output of ansible Playbooks                  
                  ![Image](https://github.com/DevopsRizwan/consul-cluster/blob/master/ansible-output.PNG)


 End Result of Consul-HA
                  ![Image](https://github.com/DevopsRizwan/consul-cluster/blob/master/consul-ha.PNG)
