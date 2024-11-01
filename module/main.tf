variable "region" {

}



variable "test" {}

provider "aws" {
  region = var.region
}

# resource "aws_s3_bucket" "test_bucket" {
#  bucket = var.bucket_name
#  acl    = "private"
# }


resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo 'Hello, World!'"
  }
  triggers = {
    always_run = timestamp()
  }
}

#output "bucket_name" {
#  value = aws_s3_bucket.test_bucket.bucket
#}


#output "bucket_arn" {
#  value = aws_s3_bucket.test_bucket.arn
#}
