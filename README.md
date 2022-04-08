# Udagram
The following document contains instructions on how to deploy a highly available web application using AWS CloudFormation.

## Architecture Diagram

![Diagram](architecture-diagram.png)

## Infrastructure Deployment

The application infrastructure consists of deploying the following stacks:
1. Network. This includes VPC, two pairs of public and private subnets, Internet Gateway, NAT Gateways and Routing Tables for public and private subnets with associations.
2. Bastion hosts _(Optional)_. These are EC2 instances for troubleshooting of application web servers.
3. Application services. In particular, Load Balancer, web servers and corresponding autoscaling, target and security groups.

### Create infrastructure

To create the infrastructure stack run the following commands in the same order as below:

1. `./create.sh network network.yaml network-parameters.json`                                    

2. `./create.sh bastion-hosts bastion-hosts.yaml bastion-hosts-parameters.json` 

3. `./create.sh application-servers application-servers.yaml application-servers-parameters.json`  

### Verify deployment

To check whether the web application is running, follow the web application public URL, which could be found in output exports of application-servers cloud formation stack.

### Update infrastructure

To update the already existing infrastructure stack run one (or all) the following commands:

1. `./update.sh network network.yaml network-parameters.json`                                    

2. `./update.sh bastion-hosts bastion-hosts.yaml bastion-hosts-parameters.json`    

3. `./update.sh application-servers application-servers.yaml application-servers-parameters.json`  

### Delete infrastructure

To delete the infrastructure stack run the following commands in the same order as below:

1. `./delete.sh application-servers`  

2. `./delete.sh bastion-hosts`  

3. `./delete.sh network`  

_Note_: you would have to type 'yes' to confirm the stack deletion in the command prompt.