variable "dns_link" {
  description = "A map of DNS links to associate private DNS zones with virtual networks"
  type = map(object({
    name       = string
    private_dns = object({
      name = string
    })
    vnet = object({
      id = string
    })
  }))
  default = {
    example_link = {
      name = "example-dns-link"
      private_dns = {
        name = "example.private.zone"
      }
      vnet = {
        id = "/subscriptions/your-subscription-id/resourceGroups/your-rg/providers/Microsoft.Network/virtualNetworks/your-vnet"
      }
    }
  }
}
