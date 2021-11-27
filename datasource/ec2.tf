resource "aws_instance" "foo" {
  ami           = data.aws_ami.amiid.id
  instance_type = "t2.micro"
  tags = {
    Name = "RHEL_8"
  }
}
