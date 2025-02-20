module "general" {
    source = "./modules/res/az_general"
    rg_name = "dns-module"
  
}

module "private_dns" {
  source = "./modules/res/az_networking/private_dns_zone"
  rg_name = module.general.rg_name
  private_dns = var.private_dns
}