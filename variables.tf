variable "subscription_id" {
    type        = string
  description = "Subscription ID"
}

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
     vnet_name = string
  }))
}

variable "vnets" {
  description = "Map of vnets to create"
  type = map(object({
    name            = string
    address_space = string
  }))
}
variable "rg_location" {
  description = "Resource Group location"
  type        = string
}
