output "rg_id" {
  value       = azurerm_resource_group.rg.id
  description = "The ID of the created resource group"
}

output "rg_name" {
  value       = azurerm_resource_group.rg.name
  description = "The name of the created resource group"
}
