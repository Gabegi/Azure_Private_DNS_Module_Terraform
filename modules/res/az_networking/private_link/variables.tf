variable "dns_link" {
  description = "A map of DNS links to associate private DNS zones with virtual networks"
  type = map(object({
    name       = string
    private_dns_name = string
    vnet_name = string
  }))
  }


variable "rg_name" {
  type        = string
  description = "Optional name override for the resource group"
}