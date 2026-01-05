terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}

variable "names" {
  type    = list(string)
  default = ["test0", "test1", "test2", "test3"]
}

resource "null_resource" "test" {
  for_each = toset(var.names)
  triggers = {
    list_index = each.key
    list_value = each.value
  }
}

output "null_resource_output" {
  value = null_resource.test
}
