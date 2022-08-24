module "route_table" {
  source     = "./modules/route_table"
  depends_on = [module.subnet]

  vpc_id          = module.vpc.vpc_id
  igw_id          = module.vpc.igw_id
  enabled_web_rt  = var.enabled_web_rt
  app_name        = var.app_name
  enabled_app_rt  = var.enabled_app_rt
  natgw_ids       = module.subnet.natgw_id
  app_sn_ids      = module.subnet.sn_app_id
  web_sn_ids      = module.subnet.sn_web_id
  db_sn_ids       = module.subnet.sn_db_id
  reserved_sn_ids = module.subnet.sn_reserved_id
}
