terraform {
  source = "${get_repo_root()}/module"
}


inputs = {
  bucket_name = "prod-bucket"
  region      = "us-east-1"
  test        = "value"
}
