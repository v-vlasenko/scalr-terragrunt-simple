remote_state {
  backend = "remote"

  config = {
    organization = "your-tf-cloud-org"
    workspaces = {
      name = "${path_relative_to_include()}"
    }
  }
}