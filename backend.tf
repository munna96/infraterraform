terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-2902"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "hashtekTerraformStatelock"
  }
}
