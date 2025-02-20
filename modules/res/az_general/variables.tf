variable "rg_location" {
  type        = string
  description = "Azure region where resources will be deployed"
  default = "West Europe"
}

variable "rg_name" {
  type        = string
  description = "Optional name override for the resource group"
}