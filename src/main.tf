resource "random_string" "instance_id" {
  keepers = {
    cluster_name = var.cluster_name
  }

  length      = 3
  min_lower   = 1
  min_numeric = 2
  lower       = true
  special     = false
}

locals {
  environment_name     = "wasp-bootstrap-${random_string.default.result}"
  environment_location = "eastus2"
}

resource "azurerm_resource_group" "default" {
  name     = local.environment_name
  location = local.environment_location
}
