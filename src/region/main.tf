resource "azurerm_resource_group" "default" {
  name     = var.name
  location = var.region
  tags     = var.tags
}

module "vault" {
  source = "git@github.com:smsilva/azure-key-vault.git//src?ref=1.0.0"

  name           = azurerm_resource_group.default.name
  resource_group = azurerm_resource_group.default
  administrators = var.administrator_id_list
  tags           = var.tags
}
