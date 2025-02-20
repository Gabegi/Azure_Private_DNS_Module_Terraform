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
