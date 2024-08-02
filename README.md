# Terraform-Data-Sources
Data Source helps you to fetch required info from your resources and print the output to terraform terminal.
Below example shows that public ip is printed in outputs.
For example - 
output "fetched_info_from_aws" {

  value = data.aws_instance.Myawsinstance.public_ip

Printed output on terminal =

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

fetched_info_from_aws = "34.226.123.75"
