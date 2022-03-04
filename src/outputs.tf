output "resource_group_id" {
  value = module.environment.resource_group.id
}

output "regions" {
  value = {
    for key in keys(module.regions) : key => {
      resource_group_id       = module.regions[key].resource_group.id
      resource_group_name     = module.regions[key].resource_group.name
      resource_group_location = module.regions[key].resource_group.location
      vault_id                = module.regions[key].vault.id
      vault_name              = module.regions[key].vault.name
    }
  }
}
