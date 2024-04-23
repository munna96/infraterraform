terraform {
  backend "s3" {
    bucket = "mushjenkin"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "jenkin_table"
  }
}
