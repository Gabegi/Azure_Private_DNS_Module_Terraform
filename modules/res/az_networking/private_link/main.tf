data "azurerm_virtual_network" "vnet" {
  for_each            = var.dns_link
  name                = each.value.vnet_name
  resource_group_name = var.rg_name
}


resource "azurerm_private_dns_zone_virtual_network_link" "dns_link" {
  for_each = var.dns_link
  
  name                  = each.value.name
  resource_group_name   = var.rg_name
  private_dns_zone_name = each.value.private_dns_name
   virtual_network_id    = data.azurerm_virtual_network.vnet[each.key].id
  registration_enabled = true
}
