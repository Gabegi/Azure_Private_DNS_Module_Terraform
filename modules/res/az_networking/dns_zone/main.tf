resource "azurerm_private_dns_zone" "private_dns" {
  name                = "example.local"
  resource_group_name = azurerm_resource_group.rg.name
}