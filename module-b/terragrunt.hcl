terraform {
  source = "../../"
}

dependencies {
  paths = ["../module-a"]
}

inputs = {
  module_name = "module-b"
  resource_id = "resource-002"
  dependency_info = dependency.module-a.outputs.resource_output
}
