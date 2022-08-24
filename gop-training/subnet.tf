module "subnet" {
  source     = "./modules/subnet"
  depends_on = [module.vpc]

  enabled_reserved_tiers = var.enabled_reserved_tiers
  reserved_sn_name       = local.sn_reserved_name
  azs                    = data.aws_availability_zones.azs.names
  reserved_sn_cidr       = local.sn_reserved_cidr
  reserved_sn_ipv6       = local.sn_reserved_ipv6
  vpc_ipv6_cidr          = module.vpc.vpc_ipv6_cidr
  vpc_id                 = module.vpc.vpc_id
  enabled_db_tiers       = var.enabled_db_tiers
  db_sn_name             = local.sn_db_name
  db_sn_cidr             = local.sn_db_cidr
  db_sn_ipv6             = local.sn_db_ipv6
  enabled_app_tiers      = var.enabled_app_tiers
  app_sn_name            = local.sn_app_name
  app_sn_cidr            = local.sn_app_cidr
  app_sn_ipv6            = local.sn_app_ipv6
  enabled_web_tiers      = var.enabled_web_tiers
  web_sn_name            = local.sn_web_name
  web_sn_cidr            = local.sn_web_cidr
  web_sn_ipv6            = local.sn_web_ipv6
  app_name               = var.app_name
}
