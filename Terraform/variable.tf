variable "aws_region" {
    default = "us-east-1"
    description = "AWS region to deploy resources"
}

variable "vpc_cidr" {
    default = "15.1.0.0/24"
    description = "The Cidr Block for VPC creation" 
}

variable "aws_vpc" {
    default = "Tera-Demo-Vpc"
    description = "The default name for the VPC"
  
}