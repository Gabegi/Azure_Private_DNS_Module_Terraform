variable "dns_link" {
  description = "A map of DNS links to associate private DNS zones with virtual networks"
  type = map(object({
    name       = string
    private_dns_name = string
    vnet_id = string
  }))
  default = {
    example_link = {
      name = "example-dns-link"
      private_dns_name = "example.private.zone"
      vnet_id = "/subscriptions/your-subscription-id/resourceGroups/your-rg/providers/Microsoft.Network/virtualNetworks/your-vnet"
      }
    }
  }


variable "rg_name" {
  type        = string
  description = "Optional name override for the resource group"
}