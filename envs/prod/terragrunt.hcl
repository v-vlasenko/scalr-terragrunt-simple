terraform {
  source = "/opt/workdir/module//"
}



inputs = {
  bucket_name = "prod-bucket"
  region      = "us-east-1"
  test        = "value"
}
