variable "aws_region" {
  default     = "us-east-1"
  description = "AWS region to deploy resources"
}

variable "vpc_cidr" {
  default     = "15.1.0.0/24"
  description = "The Cidr Block for VPC creation"
}

variable "aws_vpc" {
  default     = "Tera-Demo-Vpc"
  description = "The default name for the VPC"
}

variable "Public-Subnet-CIDR" {
  default     = "15.1.0.0/25"
  description = "Default value for Public subnet CIDR"

}

variable "Private-Subnet-CIDR" {
  default     = "15.1.0.128/25"
  description = "Default value for Public subnet CIDR"

}

variable "Tera-SG" {
  default     = "Tera-SG"
  description = "Security group for the demo environment"

}

/*variable "ami" {
  default     = "ami-00a929b66ed6e0de6"
  description = "Defalult ami for the Ec2 deployment"

}*/

variable "instance_type" {
    default = "t2.micro"
    description = "Instance type for the deployment"
  
}

variable "key" {
    default = "Key1"
    description = "Key for the EC2"
  
}