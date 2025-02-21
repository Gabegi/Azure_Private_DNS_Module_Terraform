resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnets
  name                = each.value.vnet_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  address_space       = each.value.address_space
}
