resource "aws_vpc" "Tera-Demo-Vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.aws_vpc
  }

}

resource "aws_subnet" "Tera-Public-Subnet" {
  vpc_id     = aws_vpc.Tera-Demo-Vpc.id
  cidr_block = var.Public-Subnet-CIDR
  tags = {
    Name = "Tera-Public-Subnet"
  }
}

resource "aws_subnet" "Tera-Private-Subnet" {
  vpc_id     = aws_vpc.Tera-Demo-Vpc.id
  cidr_block = var.Private-Subnet-CIDR
  tags = {
    Name = "Tera-Private-Subnet"
  }

}
