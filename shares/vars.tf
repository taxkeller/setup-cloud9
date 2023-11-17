variable "aws_access_key" {
  type = string
}

variable "aws_secret_access_key" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "cloud9_owner_arn" {
  type = string
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_a_subnet_cidr_block" {
  type    = string
  default = "10.0.0.0/20"
}

variable "public_c_subnet_cidr_block" {
  type    = string
  default = "10.0.16.0/20"
}
