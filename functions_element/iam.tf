resource "aws_iam_user" "lb"{
 name = element(var.userlist,count.index)
 path = "/system/"
 count = length(var.userlist)
}
