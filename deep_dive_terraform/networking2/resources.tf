##################################################################################
# DATA
##################################################################################

data "aws_availability_zones" "available" {}

data "consul_keys" "networking" {
  key {
    name = "networking"
    path = "networking/configuration/globo-primary/net_info"
  }

  key {
    name = "common_tags"
    path = "networking/configuration/globo-primary/common_tags"
  }
}

##################################################################################
# RESOURCES
##################################################################################

# NETWORKING #
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~>2.0"

  name = "globo-primary"

  cidr            = local.cidr_block
  azs             = slice(data.aws_availability_zones.available.names, 0, local.subnet_count)
  private_subnets = data.template_file.private_cidrsubnet.*.rendered
  public_subnets  = data.template_file.public_cidrsubnet.*.rendered

  enable_nat_gateway = false

  create_database_subnet_group = false

  tags = local.common_tags
}
