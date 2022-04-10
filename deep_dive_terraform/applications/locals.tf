##################################################################################
# LOCALS
##################################################################################

locals {
  asg_instance_size = jsondecode(data.consul_keys.applications.var.applications)["asg_instance_size"]
  asg_max_size      = jsondecode(data.consul_keys.applications.var.applications)["asg_max_size"]
  asg_min_size      = jsondecode(data.consul_keys.applications.var.applications)["asg_min_size"]
  rds_storage_size  = jsondecode(data.consul_keys.applications.var.applications)["rds_storage_size"]
  rds_engine        = jsondecode(data.consul_keys.applications.var.applications)["rds_engine"]
  rds_version       = jsondecode(data.consul_keys.applications.var.applications)["rds_version"]
  rds_instance_size = jsondecode(data.consul_keys.applications.var.applications)["rds_instance_size"]
  rds_multi_az      = jsondecode(data.consul_keys.applications.var.applications)["rds_multi_az"]
  rds_db_name       = jsondecode(data.consul_keys.applications.var.applications)["rds_db_name"]

  common_tags = merge(jsondecode(data.consul_keys.applications.var.common_tags),
    {
      Environment = terraform.workspace
    }
  )
}
