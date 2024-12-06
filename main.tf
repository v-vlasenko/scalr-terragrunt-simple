variable "module_name" {
  description = "The name of the module"
  default = "test_module_name"
  type        = string
}

variable "resource_id" {
  description = "A unique identifier for the resource"
  type        = string
  default = "test_resource_id"
}

variable "dependency_info" {
  description = "Information from dependent modules"
  type        = map(string)
  default     = {}
}

resource "null_resource" "placeholder" {
  triggers = {
    module_name     = var.module_name
    resource_id     = var.resource_id
    dependency_data = jsonencode(var.dependency_info)
  }

  provisioner "local-exec" {
    command = "echo ${var.module_name} resource created with dependency info: ${jsonencode(var.dependency_info)}"
  }
}

output "resource_output" {
  value = {
    module_name = var.module_name
    resource_id = var.resource_id
  }
}
