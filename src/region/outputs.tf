output "resource_group" {
  value = azurerm_resource_group.default
}

output "vault" {
  value = module.vault.instance
}
