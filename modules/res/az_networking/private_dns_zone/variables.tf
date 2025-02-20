variable "rg_name" {
  type        = string
  description = "Optional name override for the resource group"
}

variable "private_dns" {
  description = "A map of private DNS zones to be created"
  type = map(object({
    name = string
  }))
  default = {
    example = {
      name = "example.private.zone"
    }
  }
}

