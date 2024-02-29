terraform {
  backend "s3" {
    bucket = "sherlokbuk"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "sheelok_table"
  }
}
