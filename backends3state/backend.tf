terraform {
  backend "s3" {
    bucket         = "s3bk-tfstate-backend"
    key            = "terraform_remote.tfstate"
    region         = "us-east-2"
    dynamodb_table = "remotelock"
  }
}
