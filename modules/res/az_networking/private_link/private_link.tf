resource "azurerm_private_dns_zone_virtual_network_link" "dns_link" {
  for_each = var.dns_link
  
  name                  = each.value.name
  resource_group_name   = var.rg_name
  private_dns_zone_name = each.value.private_dns.name
  virtual_network_id    = each.value.vnet.id
  registration_enabled = true
}
