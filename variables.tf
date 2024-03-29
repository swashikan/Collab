variable "ami" {
  default = "ami-0d74f1e79c38f2933"
}

variable "type" {
  default = "t3.micro"
}


variable "sg_name" {
  default = "Pluto-sg"
  sensitive = "true"
}

variable "cidr" {
  default = "10.0.0.0/22"
}

variable "public_subnet_cidr" {
  type = list(string)
  description = "Public Subnet CIDR values"
}

variable "private_subnet_cidr" {
  type = list(string)
  description = "Private Subnet CIDR Values"
}

variable "azs" {
  type = list(string)
  default = ["eu-north-1b", "eu-north-1a", "eu-north-1c"]
}