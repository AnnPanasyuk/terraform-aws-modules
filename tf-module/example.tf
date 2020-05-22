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

output "ip" {
  value = aws_eip.ip.public_ip
}
