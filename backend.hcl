generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"

  # Using Terragrunt's `get_parent_terragrunt_dir` to dynamically reference parent variables
  contents = <<EOF
terraform {
  backend "s3" {
    bucket         = "${local.bucket_name}"
    key            = "global/${local.bucket_name}/terraform.tfstate"
    region         = "${local.region}"
    encrypt        = true
    dynamodb_table = "${local.module_name}-locks"
  }
}
EOF
}


locals {
  bucket_name = "override"
  module_name = "${basename(get_terragrunt_dir())}"
  region = "us-east-1"
}

