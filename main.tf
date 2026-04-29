terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "ansible_inventory" {
  filename = "${path.module}/ansible_inputs/inventory.yaml"

  content = templatefile("${path.module}/templates/inventory.yaml.tpl", {})
}