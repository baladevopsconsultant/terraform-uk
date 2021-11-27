locals {
  common_tags = {
    Owner   = "DevOps Team"
    service = "backend"
  }
}

resource "aws_instance" "foo" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  tags          = local.common_tags
}
resource "aws_instance" "foo1" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.small"
  tags          = local.common_tags
}

resource "aws_ebs_volume" "db_ebs" {
  availability_zone = "us-east-1a"
  size              = 8
  tags              = local.common_tags
}
