#comment
terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}

resource "null_resource" "example" {
      triggers = {
        value = "A example resource that does nothing!"
      }
    }

output "null_resource_output" {
  value = null_resource.example
}
