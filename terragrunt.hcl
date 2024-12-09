terraform {
  # Use relative path to refer to the module
  source = "tfr://mainiacp.ape.testenv.scalr.dev/env-svrcnchebt61e30/one/double?version=1.0.3"
}

remote_state {
  backend = "remote"
  config = {
    hostname = "mainiacp.ape.testenv.scalr.dev"
    organization = "tfenv1"

    workspaces = {
      name = "remote"
    }
  }

}
