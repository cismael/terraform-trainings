#!/bin/bash

##################################################################################
# USE THE VALUES OUTPUT BY THE "create_aws_resources_using_aws_cli.sh" SCRIPT
##################################################################################

terraform import --var-file="terraform.tfvars" "module.vpc.aws_route_table.private[2]" rtb-075e7a91fe24d602d
terraform import --var-file="terraform.tfvars" "module.vpc.aws_route_table_association.private[2]" subnet-0377781539c219e72/rtb-075e7a91fe24d602d
terraform import --var-file="terraform.tfvars" "module.vpc.aws_subnet.private[2]" subnet-0377781539c219e72
terraform import --var-file="terraform.tfvars" "module.vpc.aws_route_table_association.public[2]" subnet-0278ddb66579ab58e/rtb-08d92220ba912f33b
terraform import --var-file="terraform.tfvars" "module.vpc.aws_subnet.public[2]" subnet-0278ddb66579ab58e
