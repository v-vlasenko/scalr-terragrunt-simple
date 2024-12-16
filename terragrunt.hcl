terraform {
  # Use relative path to refer to the module
  source = "tfr://bluesky.main.scalr.dev/acc-v0o6dnihvv3lg7eq2/ip/nullresouce?version=9.1.1"
}

remote_state {
  backend = "s3"
  config = {
    encrypt        = true
    bucket         = "terragrunt-run-all"
    key            = "${path_relative_to_include()}/tf.tfstate"
    region         = local.aws_region
    dynamodb_table = "terraform-locks"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
