include {
  path = find_in_parent_folders("backend.hcl")
}

terraform {
  source = "../main.tf"
}

locals {
  bucket_name = 'module-a-18mclxcv';
}

inputs = {
  module_name = "module-a"
  resource_id = "resource-001"
}

