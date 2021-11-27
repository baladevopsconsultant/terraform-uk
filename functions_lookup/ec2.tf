resource "aws_instance" "vm" {
  ami           = lookup(var.vm, var.northamericaregion1,var.northamericaregion2)
  instance_type = "t2.micro"
  tags = {
    Name = element(var.vmname, count.index)
  }
  count = 2
}
