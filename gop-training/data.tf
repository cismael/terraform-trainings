##################################################################################
# DATA
##################################################################################

data "aws_availability_zones" "azs" {
  state = "available"
}

data "aws_caller_identity" "account" {}

data "aws_ami" "amz" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}
