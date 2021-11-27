resource "aws_instance" "foo" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  tags = {
    Name = "RHEL_8"
  }
  count = var.conditions == true ? 2 : 0
}
resource "aws_instance" "foo1" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  tags = {
    Name = "RHEL_8"
  }
  count = var.conditions == false ? 1 : 0
}
