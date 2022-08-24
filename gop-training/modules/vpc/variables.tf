variable "vpc_cidr" {
  type        = string
  default     = ""
  description = "Vpc CIDR Block"
}

variable "vpc_tenancy" {
  type        = string
  default     = "default"
  description = "Vpc Instance Tenancy"
}

variable "vpc_enable_dns_support" {
  type        = bool
  default     = true
  description = "Boolean flag to enable/disable dns support in the vpc"
}

variable "vpc_enable_hostnames" {
  type        = bool
  default     = true
  description = "Boolean flag to enable/disable dns hostnames in the vpc"
}

variable "generate_ipv6_cidr" {
  type        = bool
  default     = true
  description = "Provide IPV6 CIDR block /56 prefix in the vpc"
}

variable "vpc_name" {
  type        = string
  default     = ""
  description = "Vpc name"
}

variable "log_group_name" {
  type        = string
  default     = ""
  description = "CLoudWatch vpc flow log group name"
}

variable "traffic_type" {
  type        = string
  default     = "ALL"
  description = "Vpc flow log traffic type to capture"
}

variable "log_destination_type" {
  type        = string
  default     = "cloud-watch-logs"
  description = "Vpc flow log Destination"
}

variable "vpc_flow_log_role_name" {
  type        = string
  default     = ""
  description = "Vpc flow log role name"
}

variable "loggroup_policy_name" {
  type        = string
  default     = ""
  description = "Cloudwatch log group policy name"
}
