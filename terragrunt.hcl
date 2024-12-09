terraform {
  # Use relative path to refer to the module
  source = "./module"
}

remote_state {
  backend = "remote"
  config = {
    hostname = "mainiacp.ape.testenv.scalr.dev"
    organization = "tfenv1"
    workspaces {
      name = "remote"
    }
  }
}
