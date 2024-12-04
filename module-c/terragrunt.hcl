terraform {
  source = "../../"
}

dependencies {
  paths = ["../module-b"]
}

inputs = {
  module_name = "module-c"
  resource_id = "resource-003"
  dependency_info = dependency.module-b.outputs.resource_output
}
