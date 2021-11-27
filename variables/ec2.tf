resource "aws_instance" "foo" {
  ami           = var.amiid
  instance_type = var.region[var.regionname]
  tags = {
    Name = var.tagname[count.index]
  }
  count = 2
}
