resource "aws_vpc" "main" {
  cidr_block = var.cidr

  tags = {
    name = "VPC-Test"
  }
}

resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnet_cidr)
  vpc_id = aws_vpc.main.id
  cidr_block = element(var.public_subnet_cidr, count.index )
  tags = {
    name = "public subnet"
  }
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnet_cidr)
  vpc_id = aws_vpc.main.id
  cidr_block = element(var.private_subnet_cidr, count.index )
  tags = {
    name = "private subnet"
  }
}

resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.main.id

  tags = {
    name = "test_vpc-igw"
  }
}

resource "aws_route_table" "second_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }
  tags = {
    name = "2nd route table"
  }
}