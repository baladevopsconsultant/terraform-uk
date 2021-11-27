resource "aws_instance" "foo" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.small"
  tags = {
   Name = "RHEL_8"
  }
}
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.foo.id
  allocation_id = aws_eip.lb.id
}
output "instance_ip_addr" {
  value       = aws_instance.foo.public_ip
  description = "The public IP address of the main server instance."
}
