resource "aws_instance" "Tera-Ec2" {
  ami             = data.aws_ami.Tera-Ec2.id
  instance_type   = var.instance_type
  key_name        = var.key
  subnet_id       = aws_subnet.Tera-Public-Subnet.id
  security_groups = [aws_security_group.Tera-SG.id]

  tags = {
    Name = "Tera-EC2"
  }
}