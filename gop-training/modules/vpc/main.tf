resource "aws_vpc" "custom_vpc" {
  cidr_block                       = var.vpc_cidr
  instance_tenancy                 = var.vpc_tenancy
  enable_dns_support               = var.vpc_enable_dns_support
  enable_dns_hostnames             = var.vpc_enable_hostnames
  assign_generated_ipv6_cidr_block = var.generate_ipv6_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_cloudwatch_log_group" "cw_log_group" {
  name = var.log_group_name
  tags = {
    Name = "${var.vpc_name}-FlowLog"
  }
}

resource "aws_flow_log" "vpc_flow_log" {
  traffic_type         = var.traffic_type
  log_destination_type = var.log_destination_type
  log_destination      = aws_cloudwatch_log_group.cw_log_group.arn
  vpc_id               = aws_vpc.custom_vpc.id
  iam_role_arn         = aws_iam_role.flow_log_role.arn

}

resource "aws_iam_role" "flow_log_role" {
  name               = var.vpc_flow_log_role_name
  assume_role_policy = <<EOF
{
    "Version":"2012-10-17",
    "Statement":[
       {
          "Sid":"",
          "Effect":"Allow",
          "Principal":{
             "Service":"vpc-flow-logs.amazonaws.com"
          },
          "Action":"sts:AssumeRole"
       }
    ]
}
EOF
}

resource "aws_iam_role_policy" "loggroup_policy" {
  name = var.loggroup_policy_name
  role = aws_iam_role.flow_log_role.id

  policy = <<EOF
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ],
      "Effect":"Allow",
      "Resource":"*"        
    }
  ]
}
EOF
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.custom_vpc.id

  tags = {
    Name = "${var.vpc_name}-igw"
  }
}