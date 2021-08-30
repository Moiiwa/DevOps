#Terraform best practices
##How to use
Run next commands
```
terraform init
terraform apply
```
First one will load needed modules and second will run your .tf script.

##Credentials as variables
In order not to show everyone my access key and secret key I used variables, so you can reuse this terraform file.
Simply use.
```
terraform apply  
```
When it will be needed use your credentials to enter keys and instance will be created.

##Keypair configuration
Keypair for the instance is beeing configured dynamically, enter your keypair name
when it will be asked to and this keypair will be used for the instance.

##Security group configuration
Security group is also being configured automatically. You also need to enter
your security group name to be added to instance. This is useful in case if you want to reuse already existing security group.