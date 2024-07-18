variable "region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "192.168.0.0/22"
}

variable "cidr_block_public_subnet" {
  default = "192.168.0.0/23"
}

variable "cidr_block_private_subnet" {
  default = "192.168.2.0/23"
}

variable "ami" {
  default = "ami-0ec0e125bb6c6e8ec"
}

variable "key" {
  default = "aws_pem"
}

variable "instance_type" {
  default = "t2.micro"

}


