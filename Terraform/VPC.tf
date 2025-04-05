resource "aws_vpc" "terraform_demo_vpc" {
    cidr_block = "15.1.0.0/24"
    tags ={
        Name = terraform_demo_vpc
    }
}