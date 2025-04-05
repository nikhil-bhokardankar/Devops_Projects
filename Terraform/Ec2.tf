resource "aws_instance" "Tera-Ec2" {
    ami = "ami-00a929b66ed6e0de6"
    instance_type = "t2.micro"
    key_name = "Key1"
    subnet_id = aws_subnet.Tera-Public-Subnet.id
    security_groups = [aws_security_group.Tera-SG.id]

    tags = {
      Name = "Tera-EC2"
    }
  
}