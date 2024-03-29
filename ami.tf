data "aws_ami" "Spering-AMI" {
  most_recent = true
  owners = ["self"]
  filter {
    name   = "name"
    values = ["Spering-AMI"]
  }
}



#resource "aws_instance" "test1" {
#  ami           = var.ami
#  instance_type = var.type
#  key_name = var.key_name
#  security_groups = ["Pluto-sg"]
#
#  tags = {
#    "Name" = "web-new"
#    "Env" = "default"
#  }
#}