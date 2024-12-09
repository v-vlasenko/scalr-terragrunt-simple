terraform {
  # Use relative path to refer to the module
  source = "./module"
}


generate "remote_state" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "remote" {
    hostname = "mainiacp.ape.testenv.scalr.dev"
    organization = "tfenv1"
    workspaces {
      name = "remote"
    }
  }
}
EOF
}
