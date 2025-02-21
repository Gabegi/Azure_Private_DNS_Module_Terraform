variable "private_dns" {
  description = "A map of private DNS zones to be created"
  type = map(object({
    name = string
  }))
}

variable "dns_link" {
  description = "A map of DNS links to associate private DNS zones with virtual networks"
  type = map(object({
    name       = string
    private_dns_name = string
    vnet_id = string
  }))
}