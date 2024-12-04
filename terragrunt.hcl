generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "remote" {
    organization = "env-v0ok759at59erieho"
    workspaces  {
      name = "${basename(get_terragrunt_dir())}"
    }
    hostname = "mainiacp.ape.testenv.scalr.dev"
  }
}
EOF
}
