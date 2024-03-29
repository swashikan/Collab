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

#define an ebs volume
#resource "aws_ebs_volume" "volume1"
#  availability_zone = "eu-north-1b"
#  size = 1
#
#  tags = {
#    "Name" = "web-new"
#    "Env" = "default"
#  }
#}
#
#resource "aws_volume_attachment" "test1" {
#  device_name = "/dev/xvdf"
#  instance_id = aws_instance.test1.id
#  volume_id   = aws_ebs_volume.volume1.id
#  depends_on = [aws_instance.test1,aws_ebs_volume.volume1]
#}



