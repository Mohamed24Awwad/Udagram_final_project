# Udagram
The following document contains instructions on how to deploy a highly available web application using AWS CloudFormation.

## Architecture Diagram

![Diagram](https://raw.githubusercontent.com/Mohamed24Awwad/Udagram_final_project/master/Instances%20Infrastructure.png)

## Infrastructure Deployment

The application infrastructure consists of deploying the following stacks:
1. Network. This includes VPC, two pairs of public and private subnets, Internet Gateway, NAT Gateways and Routing Tables for public and private subnets with associations.
2. Bastion hosts _(Optional)_. These are EC2 instances for troubleshooting of application web servers.
3. Application services. In particular, Load Balancer, web servers and corresponding autoscaling, target and security groups.

### Create infrastructure

To create the infrastructure stack run the following commands in the same order as below:

1. `./create.sh networkstack Infra-Config.yml Infra-Params.json`                                    



2. `./create.sh appserverstack App-Servers-Config.yml App-Ser ers-Params.son`  

### Verify deployment

To check whether the web application is running, follow the web application public URL, which could be found in output exports of application-servers cloud formation stack.

### Update infrastructure

To update the already existing infrastructure stack run one (or all) the following commands:

1. `./update.sh networkstack Infra-Config.yml Infra-Params.json`                                

    

2. `./update.sh appserverstack App-Servers-Config.yml App-Ser ers-Params.son`  

### Delete infrastructure

To delete the infrastructure stack run the following commands in the same order as below:

1. `./delete.sh appserversstack`  



2.`./delete.sh networkstack`  

_Note_: you would have to type 'yes' to confirm the stack deletion in the command prompt.
