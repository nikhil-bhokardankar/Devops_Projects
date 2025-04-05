resource "aws_vpc" "Tera-Demo-Vpc" {
    cidr_block = "15.1.0.0/24"
    tags = {
      Name = "Tera-Demo-Vpc"
    }
  
}