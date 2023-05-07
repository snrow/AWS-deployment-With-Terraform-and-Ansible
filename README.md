<!-- BEGIN_TF_DOCS -->
## AWS with Terraform and Ansible
This repository contains the Terraform configuration files and Ansible playbook to create a three-tiered application on AWS.

## Prerequisites
- Download Terraform to your workstation.
- Have access to an AWS account.

## Requirements

| Name | Version |
|------|---------|
|[Terraform](#requirement\list) | v1.4.6 |
|[Python](#requirement\list) | 3.5.2  |
|[Ansible](#requirement\list) | 2.9.27 |
|[AWS-Cli](#requirement\list) | 1.18.69 |

 
## Steps to Follow

To access and run any of the projects or missions in this repository, you can simply clone the repository to your local machine and follow those steps :

1. AWS configure insert your Key ID and Access Ley ID
```bash
aws configure
```

2. Clone the repository

```bash
 git clone https://github.com/snrow/task.git 
 ```

3. CD to the main folder
``` bash
 cd task/mission/
 ```

3. Terrafrom init
```bash
terraform init
```
4. Terraform plan
```bash
terraform plan
```
5. Terraform apply
```bash
terraform apply -auto-approve
```

6. Browse to the URL you got in the console

7. After you done don't forget to destroy all the resources
```bash
terraform destroy -auto-approve
``` 

                    ┌───────────┐
                    │     PC    │
                    └───────────┘
                          │
                          │ 
                  ┌────────────────┐
                  │Internet Gateway│
                  └────────────────┘
                          │
                          │
                 ┌───────────────────┐
                 │     LB Server     │
                 └───────────────────┘         
                          │                        
                          │             
                          ▼               
                    ┌─────────────┐  
                    | Web Server  |
                    └─────────────┘
                          │                        
                          │             
                          ▼      
                    ┌─────────────┐ 
                    │ DB Server   │
                    └─────────────┘  
       
