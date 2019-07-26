# How to automate the creation of a Consul cluster
## High availibility of Consul cluster- 3 Node setup in 3 different availibility zones of any aws region. 

 There are various ways to attain a fully automated set-up of HA-Consul cluster, for instance we can have end to end solution in only  ansible or terraform or of any one scripted language; but this solution is designed to keep in mind, to make the use of best powerful features of  freely available opensource product/tool.
 
 Three main tasks are involved here:-
   -  Provisioning of infrastrature (In this case i am using AWS)
   -  Installation of Consul on respected servers in different zones (You can specify any avaiibility zone and AWS Region)
   -  Configuration of consul nodes to act and maintain HA of Consul servers.
   
For provisioning i have choosen Hashicorp's Terraform, reason as it has a feature to maintain the state of your infrastructure. Similarly for configuration management i.e; for installation and configuration  of the Consul HA Ansible has several advantages over terraform.

## Architecture of above setup:-
                                         ![Image](https://github.com/DevopsRizwan/consul-cluster/blob/master/consul.jpg)

## Final output of ansible Playbooks                  
                  ![Image](https://github.com/DevopsRizwan/consul-cluster/blob/master/ansible-output.PNG)

## End Result of Consul-HA
                  ![Image](https://github.com/DevopsRizwan/consul-cluster/blob/master/consul-ha.PNG)


## Ongoing Maintainance Tasks:-

- Renewal of AWS authentication keys.
- Enhancement  and change in infrastructure, when the load increases.
- Change of service file in case of DNS server change.
- Timely replacement of SSH key files for security.

## Cost Involvement:-

Total cost depends on the configuration of ec2 instances. Here, i have used t2-micro instances, each costs aprroximately USD $10. Apart from that you require DNS hosted zone in AWS,and Route-53 costs around USD $.5, VPC hosting has pricing as per the traffic. To sum up the approximate billing for 3 node set up of 3-micro instances will be around USD $50 per mont. 
All tools that we are using here i.e; Ansible, Terraform and Jenkins are opensource tools. Hence doesn't involve any cost in HA setup.

P.S. Cost estimation is based on the rough calcultion, actual may vary.
