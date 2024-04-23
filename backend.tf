terraform {
  backend "s3" {
    bucket = "jenkinmush"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "jenkin_table"
  }
}
