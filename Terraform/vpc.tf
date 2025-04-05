resource "aws_vpc" "Tera-Demo-Vpc" {
  cidr_block = "15.1.0.0/24"
  tags = {
    Name = "Tera-Demo-Vpc"
  }

}

resource "aws_subnet" "Tera-Public-Subnet" {
  vpc_id     = aws_vpc.Tera-Demo-Vpc.id
  cidr_block = "15.1.0.0/25"
  tags = {
    Name = "Tera-Public-Subnet"
  }
}

resource "aws_subnet" "Tera-Private-Subnet" {
  vpc_id     = aws_vpc.Tera-Demo-Vpc.id
  cidr_block = "15.1.0.128/25"
  tags = {
    Name = "Tera-Private-Subnet"
  }

}
