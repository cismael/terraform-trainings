module "vpc" {
  source = "./modules/vpc"

  vpc_cidr               = var.vpc_cidr
  vpc_name               = var.vpc_name
  log_group_name         = "${var.vpc_name}-FlowLog"
  vpc_flow_log_role_name = "${var.vpc_name}-FlowLog-Role"
  loggroup_policy_name   = "${var.vpc_name}-Loggroup-Policy"
}
