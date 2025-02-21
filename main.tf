module "rg" {
    source = "./modules/res/az_general"
    rg_name = "dns-module"
}

module "vnet" {
  source = "./modules/res/az_networking/vnet"
  vnets = var.vnets
  rg_name     = module.general.rg_name
  rg_location = var.rg_location
}

module "private_dns_setup" {
  source      = "./modules/ptn/dns"
  rg_name     = module.general.rg_name
  private_dns = var.private_dns
  dns_link    = var.dns_link
}
