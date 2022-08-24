##################################################################################
# RESOURCES
##################################################################################

resource "aws_subnet" "sn_reserved" {
  count                           = var.enabled_reserved_tiers ? length(var.reserved_sn_name) : 0
  vpc_id                          = var.vpc_id
  availability_zone               = var.azs[count.index]
  cidr_block                      = var.reserved_sn_cidr[count.index]
  ipv6_cidr_block                 = cidrsubnet(var.vpc_ipv6_cidr, 8, var.reserved_sn_ipv6[count.index])
  assign_ipv6_address_on_creation = var.enabled_auto_assign_ipv6
  tags = {
    Name = var.reserved_sn_name[count.index],
  }
}

resource "aws_subnet" "sn_db" {
  count                           = var.enabled_db_tiers ? length(var.db_sn_name) : 0
  vpc_id                          = var.vpc_id
  availability_zone               = var.azs[count.index]
  cidr_block                      = var.db_sn_cidr[count.index]
  ipv6_cidr_block                 = cidrsubnet(var.vpc_ipv6_cidr, 8, var.db_sn_ipv6[count.index])
  assign_ipv6_address_on_creation = var.enabled_auto_assign_ipv6
  tags = {
    Name = var.db_sn_name[count.index],
  }
}

resource "aws_subnet" "sn_app" {
  count                           = var.enabled_app_tiers ? length(var.app_sn_name) : 0
  vpc_id                          = var.vpc_id
  availability_zone               = var.azs[count.index]
  cidr_block                      = var.app_sn_cidr[count.index]
  ipv6_cidr_block                 = cidrsubnet(var.vpc_ipv6_cidr, 8, var.app_sn_ipv6[count.index])
  assign_ipv6_address_on_creation = var.enabled_auto_assign_ipv6
  tags = {
    Name = var.app_sn_name[count.index],
  }
}

resource "aws_subnet" "sn_web" {
  count                           = var.enabled_web_tiers ? length(var.web_sn_name) : 0
  vpc_id                          = var.vpc_id
  availability_zone               = var.azs[count.index]
  cidr_block                      = var.web_sn_cidr[count.index]
  ipv6_cidr_block                 = cidrsubnet(var.vpc_ipv6_cidr, 8, var.web_sn_ipv6[count.index])
  assign_ipv6_address_on_creation = var.enabled_auto_assign_ipv6
  map_public_ip_on_launch         = var.enabled_auto_assign_ipv4
  tags = {
    Name = var.web_sn_name[count.index],
  }
}

resource "aws_eip" "natgw" {
  count = var.enabled_nat_gw ? length(var.web_sn_name) : 0
  vpc   = true

  tags = {
    Name = "${var.app_name}-eip-${count.index}"
  }
}

resource "aws_nat_gateway" "natgw" {
  count         = var.enabled_nat_gw ? length(var.web_sn_name) : 0
  allocation_id = aws_eip.natgw[count.index].id
  subnet_id     = aws_subnet.sn_web[count.index].id

  tags = {
    Name = "${var.app_name}-natgw-${count.index}"
  }
}
