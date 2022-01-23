resource "aws_dynamodb_table" "lockstateenabling" {
  name           = "remotelock"
  write_capacity = 10
  read_capacity  = 10
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
