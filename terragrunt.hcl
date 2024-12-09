terraform {
  # Use relative path to refer to the module
  source = "./module"
  backend "remote" {
    hostname = "mainiacp.ape.testenv.scalr.dev"
    organization = "tfenv1"
    workspaces {
      name = "remote"
    }
  }
}



