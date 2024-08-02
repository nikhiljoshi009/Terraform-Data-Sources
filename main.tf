provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "Ec2-instance1" {

  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"

  tags = {

    Name = "Terraform-EC2"
  }

}

data "aws_instance" "Myawsinstance" {
  filter {
    name   = "tag:Name"
    values = ["Terraform-EC2"]
  }

  depends_on = [
    aws_instance.Ec2-instance1
  ]
}

output "fetched_info_from_aws" {

  value = data.aws_instance.Myawsinstance.public_ip
  
}
