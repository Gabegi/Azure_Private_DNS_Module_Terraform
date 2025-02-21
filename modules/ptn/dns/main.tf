module "private_dns" {
  source = "./modules/res/az_networking/private_dns_zone"
  rg_name = module.general.rg_name
  private_dns = var.private_dns
}

module "private_link" {
  source = "./modules/res/az_networking/private_link"
  rg_name = module.general.rg_name
}