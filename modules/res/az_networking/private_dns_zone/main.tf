resource "azurerm_private_dns_zone" "private_dns" {
  for_each            =   var.private_dns
  name                = each.value.name
  resource_group_name = var.rg_name
}