resource "aws_security_group" "Tera-SG" {
  name   = "Tera-SG"
  vpc_id = aws_vpc.Tera-Demo-Vpc.id
  tags = {
    Name = "Tera-SG"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_RDP_ipv4"{
    security_group_id = aws_security_group.Tera-SG.id
    cidr_ipv4         = aws_vpc.Tera-Demo-Vpc.cidr_block
    from_port         = 3389
    ip_protocol       = "tcp"
    to_port           = 3389
  }