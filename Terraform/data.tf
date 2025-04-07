data "aws_ami" "Tera-Ec2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.7.20250331.0-kernel-6.1-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  owners = ["137112412989"] # Amazon's official owner ID for Amazon Linux AMIs
}
