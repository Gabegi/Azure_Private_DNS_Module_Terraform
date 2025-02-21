variable "rg_name" {
  description = "Resource Group name"
  type        = string
}

variable "rg_location" {
  description = "Resource Group location"
  type        = string
}

variable "vnets" {
  description = "Map of vnets to create"
  type = map(object({
    name            = string
    address_space = list(string)
  }))
}
