terraform {
  backend "s3" {
    bucket = "jenkinmush"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "jenkin_table"
  }
}
