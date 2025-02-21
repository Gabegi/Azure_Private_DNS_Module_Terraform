module "general" {
    source = "./modules/res/az_general"
    rg_name = "dns-module"
  
}

module "private_dns_setup" {
  source      = "./modules/private_dns_module"
  rg_name     = module.general.rg_name
  private_dns = var.private_dns
  dns_link    = var.dns_link
}
