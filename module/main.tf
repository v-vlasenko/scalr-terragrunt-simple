variable "region" {}

variable "bucket_name" {}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.test_bucket.bucket
}


output "bucket_arn" {
  value = aws_s3_bucket.test_bucket.arn
}