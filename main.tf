provider "aws" {
 profile  = "default"
 region   = "us-east-1"
}

resource "aws_instance" "example" {
 ami          = "ami-2757f631"
 instance_type     = "t2.micro"
 vpc_security_group_ids = ["sg-24319f5f"]
 subnet_id       = "subnet-41b49e24"
 provisioner "local-exec" {
  command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
 }
}

resource "aws_eip" "ip" {
  vpc = true
  instance = aws_instance.example.id
}

module "consul" {
  source  = "./tf-module"
  version = "v1.1.1"
}

 module "terraform-aws-module1" {
  source  = "./folder1/terraform-aws-module1"
  version = "v1.1.0"
}
