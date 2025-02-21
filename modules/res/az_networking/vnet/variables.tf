variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "location" {
  description = "Azure region for the VNet"
  type        = string
}

variable "rg_name" {
  description = "Resource Group name"
  type        = string
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "subnets" {
  description = "Map of subnets to create"
  type = map(object({
    name            = string
    address_prefixes = list(string)
  }))
}

variable "tags" {
  description = "Tags for the VNet"
  type        = map(string)
  default     = {}
}
