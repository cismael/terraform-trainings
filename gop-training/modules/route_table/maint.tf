##################################################################################
# RESOURCES
##################################################################################

resource "aws_route_table" "web_route_table" {
  count  = var.enabled_web_rt ? 1 : 0
  vpc_id = var.vpc_id
  tags = {
    Name = "${var.app_name}-web-rt-public"
  }
}

resource "aws_route" "web_route_ipv4" {
  count                  = var.enabled_web_rt ? 1 : 0
  route_table_id         = aws_route_table.web_route_table[count.index].id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.igw_id

  depends_on = [aws_route_table.web_route_table]
}

resource "aws_route" "web_route_ipv6" {
  count                       = var.enabled_web_rt ? 1 : 0
  route_table_id              = aws_route_table.web_route_table[count.index].id
  destination_ipv6_cidr_block = "::/0"
  gateway_id                  = var.igw_id

  depends_on = [aws_route_table.web_route_table]
}

resource "aws_route_table" "app_route_table" {
  count  = var.enabled_app_rt ? length(var.app_sn_ids) : 0
  vpc_id = var.vpc_id
  tags = {
    Name = "${var.app_name}-app-rt-private-${count.index}"
  }
}

resource "aws_route" "app_route_ipv4" {
  count                  = var.enabled_app_rt ? length(var.app_sn_ids) : 0
  route_table_id         = aws_route_table.app_route_table[count.index].id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = var.natgw_ids[count.index]

  depends_on = [aws_route_table.app_route_table]
}

resource "aws_route_table_association" "web_rt_association" {
  count          = var.enabled_web_rt ? length(var.web_sn_ids) : 0
  route_table_id = join("", aws_route_table.web_route_table.*.id)
  subnet_id      = var.web_sn_ids[count.index]

  depends_on = [aws_route_table.web_route_table]
}

resource "aws_route_table_association" "app_rt_association" {
  count          = var.enabled_app_rt ? length(var.app_sn_ids) : 0
  route_table_id = aws_route_table.app_route_table[count.index].id
  subnet_id      = var.app_sn_ids[count.index]

  depends_on = [aws_route_table.web_route_table]
}
