aws_region             = "eu-west-3"
aws_profile            = "default"
vpc_cidr               = "10.16.0.0/16"
vpc_name               = "ICO-VPC1"
traffic_type           = ""
log_destination_type   = ""
enabled_reserved_tiers = true
enabled_db_tiers       = true
enabled_app_tiers      = true
enabled_web_tiers      = true
enabled_nat_gw         = true
enabled_app_rt         = true
enabled_web_rt         = true
app_name               = "gop-training-use-case"
bastion_ingress_ports  = [22]
bastion_instance_type  = "t2.micro"
