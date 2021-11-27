/*resource "aws_iam_user" "iam" {
	name = var.listuser[count.index] 
	count = 2
}*/
resource "aws_iam_user" "iam" {
	name = var.listuser
}
